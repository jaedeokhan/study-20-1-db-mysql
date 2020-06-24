-- LAB # 02 
-- 1. 한국에 있는 도시들 보기
SELECT Name 
FROM city
WHERE CountryCode = 'KOR';

-- 2. 미국에 있는 도시들 보기
SELECT Name
FROM city
WHERE CountryCOde = 'USA';

-- 3. 한국에 있는 도시들 중에 인구 수가 1,000,000 이상인 도시 보기
SELECT Name
FROM city
WHERE CountryCode = 'KOR' 
AND Population >= 1000000;