-- DISTINCT 중복도니 것은 1개씩만 보여주면서 출력
SELECT DISTINCT CountryCode, COUNT(DISTINCT CountryCode)
FROM city;

-- LIMIT 출력 개수를 제한 
-- 상위의 N개만 출력하는 'LIMIT N'구문
-- 서버의 처리량을 만힝 사용해 서버의 전반적인 성능을 나쁘게 하는 악성 쿼리문 개선할 때 사용
SELECT *
FROM city
ORDER BY Population DESC
LIMIT 10;
