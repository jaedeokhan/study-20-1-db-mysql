-- 1. city, country, countrylanguage 테이블을 JOIN하고,
-- 한국에 대한 정보만 뷰 생성하기
-- USE world;
-- DESC city;
-- DESC country;
-- DESC countrylanguage;

CREATE VIEW allView AS
SELECT city.Name, country.SurfaceArea, city.population, countrylanguage.Language
FROM city 
JOIN country ON city.CountryCode = country.Code
JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode
WHERE city.countryCode = 'KOR';

SELECT * FROM allView;