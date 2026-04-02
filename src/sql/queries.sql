-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
SELECT * FROM observations LIMIT 10;

-- MISSION 2
-- Your query here;
SELECT DISTINCT region_id FROM observations;


-- MISSION 3
-- Your query here;
SELECT COUNT(DISTINCT species_id) FROM observations;


-- MISSION 4
-- Your query here;
SELECT COUNT(*) FROM observations WHERE region_id = 2;


-- MISSION 5
-- Your query here;
SELECT COUNT(*) FROM observations WHERE date = '1998-08-08';


-- MISSION 6
-- Your query here;
SELECT region_id, COUNT(*) AS total FROM observations GROUP BY region_id ORDER BY total DESC LIMIT 1;


-- MISSION 7
-- Your query here;
SELECT species_id, COUNT(*) AS total FROM observations GROUP BY species_id ORDER BY total DESC LIMIT 5;


-- MISSION 8
-- Your query here;
SELECT species_id, COUNT(*) AS total FROM observations GROUP BY species_id HAVING total < 5;

-- MISSION 9

SELECT observer, COUNT(*) AS total 
FROM observations 
GROUP BY observer 
ORDER BY total DESC;


-- MISSION 10

SELECT name 
FROM regions 
JOIN observations ON regions.region_id = observations.region_id;


-- MISSION 11
SELECT scientific_name
FROM species
JOIN observations ON species.species_id = observations.species_id;

-- MISSION 12
SELECT name, scientific_name, COUNT(*) AS total
FROM observations
JOIN regions ON regions.region_id = observations.region_id
JOIN species ON species.species_id = observations.species_id 
GROUP BY name, scientific_name
ORDER BY name, total DESC;

