-- GROUP BY 
-- 그룹으로 묶어주는 역할
-- 집계 함수(Aggregate Function)를 함께 사용
-- AVG() : 평균 
-- MIN() : 최소값 
-- MAX() : 최댓값
-- COUNT() : 행의 개수
-- COUNT(DISTINCT) : 중복 제외된 행의 개수
-- STDEV() : 표준 편차
-- VARIANCE() : 분산
-- 효율적인 데이터 그룹화 Grouping
-- 읽기 졸게 하기 위해 별칭 Alias 사용
SELECT CountryCode , MAX(Population), MIN(Population), AVG(Population)
FROM city
GROUP BY CountryCode;

SELECT CountryCode , MAX(Population) AS 'Max'
FROM city
GROUP BY CountryCode;