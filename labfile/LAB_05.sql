-- 1. 도시는 몇개인가?
SELECT COUNT(*) AS '도시의 개수'
FROM city;

-- 1.1 도시들의 평균 인구수
SELECT AVG(Population)
FROM city;

-- 2. 도시들의 평균 인구수는?
SELECT Name, AVG(Population) AS '도시 평균 인구수'
FROM city
GROUP BY Name;
