-- 1. city, country, countrylanguage 테이블 3개를 JOIN 하기
DESC city;
DESC country;
DESC countrylanguage;

SELECT *
FROM city
JOIN country ON city.CountryCode = country.Code 
JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode;
