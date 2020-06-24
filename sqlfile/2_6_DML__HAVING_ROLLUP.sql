-- HAVING
-- WHERE 과 비슷한 개념으로 조건 제한
-- 집계 함수에 대해서 조건 제한하는 편리한 개념
-- HAVING 절은 반드시 GROUP BY절 다음에 나와야 함
SELECT CountryCode , MAX(Population)
FROM city
GROUP BY CountryCode
HAVING MAX(Population) >= 8000000;

-- ROLLUP
-- 총합 또는 중간합계가 필요한 경우 사용
-- GROUP BY 절과 함께 WITH ROLLUP 문 사용
-- 각각의 모든 집계 결과를 보여준다.
-- 도시들에 중간 합계를 보여준다.
SELECT CountryCode , Name, SUM(Population)
FROM city
GROUP BY CountryCode, Name WITH ROLLUP;