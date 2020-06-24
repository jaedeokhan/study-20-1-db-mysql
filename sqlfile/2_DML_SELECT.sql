-- SELECT 구문 
-- (*)를 사용해서 모든 속성을 출력하기. 
SELECT * FROM city; 

-- 원하는 속성들 출력하기.
SELECT Name, Population FROM city;

-- 기본적인 WHERE 절
-- city 테이블에서 인구수가 800만이 초과하는 모든 속성 출력
SELECT *
FROM city
WHERE Population > 8000000;

-- 인구수가 700만 ~ 800 만 까지
SELECT *
FROM city
WHERE Population < 8000000 
AND Population > 7000000;

-- BETWEEN...AND 연속적인 범위를 사용가능
SELECT *
FROM city
WHERE Population BETWEEN 7000000 AND 8000000;

-- IN 이산적인 값의 조건에서 IN() 사용 가능
SELECT * 
FROM city
WHERE Name IN('Seoul', 'New York', 'Tokyo');