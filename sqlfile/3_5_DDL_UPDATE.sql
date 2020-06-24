-- UPDATE 
-- 기존에 입력되어 있는 값을 변경하는 구문
-- 조건문을 항상 줘야한다.

UPDATE test
SET col1=1, col2=1.0, col3='test'
WHERE id=1;

SELECT * FROM test;