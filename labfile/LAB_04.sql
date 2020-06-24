-- 1. 인구수로 내림차순하여 한국에 있는 도시 보기
SELECT Name
FROM city
WHERE CountryCode = 'KOR' 
ORDER BY Population DESC;

-- 2. 국가 면적 크기로 내림차순하여 나라 보기(country table)
select *
from country
ORDER BY SurfaceArea DESC;