-- 서브 쿼리 => 쿼리문 안에 또 다른 쿼리문이 들어 있는 것
SELECT *
FROM city
WHERE CountryCode = (SELECT CountryCode
					 FROM city
					 WHERE Name = 'Seoul');
                     
		
-- ANY 서브 쿼리의 여러개의 결과 중 한가지만 만족해도 가능 == SOME
SELECT *
FROM city
WHERE Population > ANY (SELECT Population
						FROM city
						WHERE District = 'New York');                    
-- SOME
SELECT *
FROM city
WHERE Population > SOME (SELECT Population
						FROM city
						WHERE District = 'New York');
-- ALL 
SELECT *
FROM city
WHERE Population > ALL (SELECT Population
						FROM city
						WHERE District = 'New York');                                            
                        