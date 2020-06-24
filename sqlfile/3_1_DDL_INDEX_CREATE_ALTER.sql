-- 인덱스(index)
-- 테이블에서 원하는 데이터를 빠르게 찾기 위해 사용
-- 일반적으로 데이터를 검색할 때 순서대로 테이블 전체를 검색하므로 데이터가 많으면 탐색하는 시간이 늘어남
-- 검색과 질의를 할 때 테이블 전체를 읽지 않기 때문에 빠름
-- 설정된 컬럼 값을 포함한 데이터의 삽입, 삭제, 수정 작업이 원본 테이블에서 이루어질 경우, 인덱스도 
-- 함께 수정되어야 함
-- 인덱스가 있는 테이블은 처리 속도가 느려질 수 있으므로 수정보다는 검색이 자주 사용되는 
-- 테이블에서 사용하는 것이 좋음

CREATE INDEX Col1Idx
ON test (col1);

-- SHOW INDEX : 인덱스의 정보 보기
-- test 테이블에 INDEX가 어떤것이 있는지 확인하기
SHOW INDEX FROM test;

-- CREATE UNIQUE INDEX
-- 중복 값을 허용하지 않는 인덱스
CREATE UNIQUE INDEX Col2Idx
ON test (col2);

SHOW INDEX FROM test;

-- FULLTEXT INDEX
-- 일반적인 인덱스와는 달리 매우 빠르게 테이블의 모든 텍스트 컬럼을 검색
ALTER TABLE test
ADD FULLTEXT Col3Idx(col3);

SHOW INDEX FROM test;

-- 삭제하는 방법
ALTER TABLE test
DROP INDEX Col3Idx;

SHOW INDEX FROM test;

DROP INDEX Col2Idx ON test;
SHOW INDEX FROM test;
