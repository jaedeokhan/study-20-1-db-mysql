-- INSERT INTO 테이블 VALUES(값들);

USE jaedeok;

desc test;

INSERT INTO test
VALUES(1, 123, 1.1, "Test", "Test2");

SELECT * FROM test;

-- test 에 있는 테이블의 내용을 test2에 삽입하기
INSERT INTO test2 SELECT * FROM test; 
