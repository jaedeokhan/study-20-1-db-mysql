-- 1. 한국, 미국, 일본의 도시들 보기
SELECT Name
FROM city
WHERE CountryCode IN('KOR', 'USA', 'JPN');