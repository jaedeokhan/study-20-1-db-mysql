-- JOIN
-- JOIN은 데이터베이스 내의 여러 테이블에서 가져온 레코드를 조합하여
-- 하나의 테이블이나 결과 집합으로 표현
SELECT * 
FROM city
JOIN country ON city.CountryCode = country.Code;