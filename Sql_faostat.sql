/*

Queries used for Tableau Project

*/

--Creating classification of countries by region using two code systems
SELECT a.ISO,
b.Area_Code__M49_,
a.Area,
a.Region
FROM `faostat-385011.ALL.RegionISO` AS a
LEFT JOIN `faostat-385011.ALL.M49ISO` AS b
USING (ISO)
ORDER BY Area

--Checking if any value is duplicated.
SELECT Area_Code__M49_,
Year
FROM `faostat-385011.LABOR.FAOLabor`
GROUP BY Year, Area_Code__M49_
HAVING COUNT(Value)>1; 

--Checking uniqe values
SELECT DISTINCT Item FROM `faostat-385011.CAPITAL.FAOFertilizer`

--Joining multiple tables with different items/indicators
SELECT a.*,
  b_land.Year AS Year,
  b_land.Value AS Land,
  b_agri.Value AS AgriLand,
  c.Value AS RuralEmp,
  d.Value AS AgriEmp,
  e.Value AS Pesticides,
  f.Value AS Credit,
  g.Value AS AgriCredit,
  h_nitro.Value AS Nitrogen,
  h_potash.Value AS Potash,
  h_phosphate.Value AS Phosphate
FROM `faostat-385011.ALL.RegionsISOM49` AS a
LEFT JOIN `faostat-385011.LAND.FAOLand` AS b_land 
  ON a.Area_Code__M49_ = b_land.Area_Code__M49_
  AND b_land.Item = "Land area"
  AND b_land.Value IS NOT NULL
LEFT JOIN `faostat-385011.LAND.FAOLand` AS b_agri
  ON a.Area_Code__M49_ = b_agri.Area_Code__M49_ and b_land.Year=b_agri.year
  AND b_agri.Item = "Agricultural land"
  AND b_agri.Value IS NOT NULL
LEFT JOIN `faostat-385011.LABOR.FAORuralLabor` AS c
  ON a.Area_Code__M49_ = c.Area_Code__M49_ and b_land.Year=c.year
LEFT JOIN `faostat-385011.LABOR.FAOLabor` AS d
  ON a.Area_Code__M49_ = d.Area_Code__M49_ and b_land.Year=d.year
LEFT JOIN `faostat-385011.CAPITAL.FAOPesticides` AS e
  ON a.Area_Code__M49_ = e.Area_Code__M49_ and b_land.Year=e.year
  AND e.Item = "Pesticides (total)"
  AND e.Value IS NOT NULL
LEFT JOIN `faostat-385011.CAPITAL.FAOCredit` AS f
  ON a.Area_Code__M49_ = f.Area_Code__M49_ and b_land.Year=f.year
  AND f.Item="Total Credit"
  AND e.Value IS NOT NULL
LEFT JOIN `faostat-385011.CAPITAL.FAOAgriCredit` AS g
  ON a.Area_Code__M49_ = g.Area_Code__M49_ and b_land.Year=g.year
LEFT JOIN `faostat-385011.CAPITAL.FAOFertilizer` AS h_nitro
  ON a.Area_Code__M49_ = h_nitro.Area_Code__M49_ and b_land.Year=h_nitro.Year
  AND h_nitro.Item = "Nutrient nitrogen N (total)"
  AND h_nitro.Value IS NOT NULL
LEFT JOIN `faostat-385011.CAPITAL.FAOFertilizer` AS h_potash
  ON a.Area_Code__M49_ = h_potash.Area_Code__M49_ and b_land.Year=h_potash.Year
  AND h_potash.Item = "Nutrient potash K2O (total)"
  AND h_potash.Value IS NOT NULL 
LEFT JOIN `faostat-385011.CAPITAL.FAOFertilizer` AS h_phosphate
  ON a.Area_Code__M49_ = h_potash.Area_Code__M49_ and b_land.Year=h_phosphate.Year
  AND h_phosphate.Item = "Nutrient phosphate P2O5 (total)"
  AND h_phosphate.Value IS NOT NULL 
ORDER BY Area, Year

--Checking for duplicates
SELECT Area_Code__M49_,
Year
FROM `faostat-385011.ALL.DataByCountry`
GROUP BY Year, Area_Code__M49_
HAVING COUNT(Land)>1;

--Totaling values ​​by region and year
SELECT 
Region,
Year,
SUM(Land) AS Land,
SUM(AgriLand) AS AgriLand,
SUM(RuralEmp) AS RuralEmp,
SUM(AgriEmp)AS AgriEmp,
SUM(Pesticides) AS Pesticides,
SUM(Credit) AS Credit,
SUM(AgriCredit) AS AgriCredit,
SUM(Nitrogen) AS Nitrogen,
SUM(Potash) AS Potash,
SUM(Phosphate) AS Phosphate
FROM `faostat-385011.ALL.DataByCountry` 
group by Region, Year


--Adding new columns to table
ALTER TABLE `faostat-385011.ALL.DataByRegion`
ADD COLUMN AgriEmpToAgriLand NUMERIC(10,2),
ADD COLUMN AgriCreditToLand NUMERIC(10,2),
ADD COLUMN PestToAgriLand NUMERIC(10,2)
ADD COLUMN NitroToAgriLand NUMERIC (10,2),
ADD COLUMN PotashToAgriLand NUMERIC (10,2),
ADD COLUMN AgriLToLand NUMERIC (10,2),
ADD COLUMN PhosphateToAgriLand NUMERIC(10,2);

--Adding values to new columns
UPDATE `faostat-385011.ALL.DataByRegion` AS r
SET
    r.AgriEmpToAgriLand = (
        SELECT CASE
            WHEN SUM(c.AgriLand) IS NOT NULL AND SUM(c.AgriEmp) <> 0 THEN CAST(ROUND(SUM(c.AgriEmp) / SUM(c.AgriLand),2) AS NUMERIC)
            ELSE NULL
        END
        FROM `faostat-385011.ALL.DataByCountry` AS c
        WHERE c.Region = r.Region AND c.Year = r.Year
    ),
    r.AgriCreditToLand = (
        SELECT CASE
            WHEN SUM(c.AgriLand) IS NOT NULL AND SUM(c.AgriCredit) <> 0 THEN CAST((SUM(c.AgriCredit) / SUM(c.AgriLand)) AS NUMERIC)
            ELSE NULL
        END
        FROM `faostat-385011.ALL.DataByCountry` AS c
        WHERE c.Region = r.Region AND c.Year = r.Year
    ),
    r.PestToAgriLand = (
        SELECT CASE
            WHEN SUM(c.AgriLand) IS NOT NULL AND SUM(c.Pesticides) <> 0 THEN CAST(ROUND(SUM(c.Pesticides) / SUM(c.AgriLand),2) AS NUMERIC)
            ELSE NULL
        END
        FROM `faostat-385011.ALL.DataByCountry` AS c
        WHERE c.Region = r.Region AND c.Year = r.Year
    ),
    r.AgriLToLand = (
        SELECT CASE
            WHEN SUM(c.AgriLand) IS NOT NULL AND SUM(c.AgriLand) <> 0 THEN CAST(ROUND(SUM(c.AgriLand) / SUM(c.Land)*100,2) AS NUMERIC)
            ELSE NULL
        END
        FROM `faostat-385011.ALL.DataByCountry` AS c
        WHERE c.Region = r.Region AND c.Year = r.Year
    ),
    r.NitroToAgriLand = (
        SELECT CASE
            WHEN SUM(c.Nitrogen) IS NOT NULL AND SUM(c.AgriLand) <> 0 THEN CAST(ROUND(SUM(c.Nitrogen) / SUM(c.AgriLand),2) AS NUMERIC)
            ELSE NULL
        END
        FROM `faostat-385011.ALL.DataByCountry` AS c
        WHERE c.Region = r.Region AND c.Year = r.Year
    ),
    r.PotashToAgriLand = (
        SELECT CASE
            WHEN SUM(c.Potash) IS NOT NULL AND SUM(c.AgriLand) <> 0 THEN CAST(ROUND(SUM(c.Potash) / SUM(c.AgriLand),2) AS NUMERIC)
            ELSE NULL
        END
        FROM `faostat-385011.ALL.DataByCountry` AS c
        WHERE c.Region = r.Region AND c.Year = r.Year
    ),
    r.PhosphateToAgriLand = (
        SELECT CASE
            WHEN SUM(c.Phosphate) IS NOT NULL AND SUM(c.AgriLand) <> 0 THEN CAST(ROUND(SUM(c.Phosphate) / SUM(c.AgriLand),2) AS NUMERIC)
            ELSE NULL
        END
        FROM `faostat-385011.ALL.DataByCountry` AS c
        WHERE c.Region = r.Region AND c.Year = r.Year
    )
WHERE 1 = 1;



