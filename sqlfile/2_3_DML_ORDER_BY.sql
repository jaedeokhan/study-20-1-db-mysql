-- ORDER BY
-- 결과가 출력되는 순서를 조절하는 구문
-- 기본적으로 오름차순(ASCENDING) 정렬
-- 내림차순(DESCENDING)으로 정렬
-- ASC(오름차순)는 DEFAULT 이므로 생략 가능

-- DESC 
SELECT * 
FROM city
ORDER BY Population DESC;

-- ASC
SELECT * 
FROM city
ORDER BY Population;

-- ORDER BY 혼용해서 사용가능
SELECT *
FROM city
ORDER BY CountryCode ASC, Population DESC;
