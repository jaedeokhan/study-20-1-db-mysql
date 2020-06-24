-- LIKE 문자열의 내용 검색하기 위해 LIKE 연산 사용
SELECT *
FROM city
WHERE CountryCode LIKE 'KO_';

SELECT * 
FROM city
WHERE Name LIKE 'Tel%';