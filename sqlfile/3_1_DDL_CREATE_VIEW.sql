-- VIEW
-- 뷰는 DB에 존재하는 일종의 가상 테이블
-- 실제 테이블처럼 행과 열을 가지고 있지만, 실제로 데이터를 저장하지 않는다.
-- MySQL에서 뷰는 다른 테이블이나 다른 뷰에 저장되어 있는 데이터를 보여주는 역할만 수행
-- 뷰를 사용하면 여러 테이블이나 뷰를 하나의 테이블처럼 볼 수 있음
-- * 뷰의 장점
-- 특정 사용자에게 테이블 전체가 아닌 필요한 컬럼만 보여줄 수 있음
-- 복잡한 쿼리를 단순화해서 사용
-- 쿼리 재사용 가능
-- * 뷰의 단점
-- 한 번 정의도니 뷰는 변경할 수 없음
-- 삽입, 삭제, 갱신 작업에 많은 제한 사항을 가짐
-- 자신만의 인덱스를 가질 수 없음

-- CREATE VIEW
CREATE VIEW testView AS
SELECT Col1, Col2
FROM test;

SELECT * FROM testView;

-- ALTER VIEW
ALTER VIEW testView AS
SELECT Col1, Col2, Col3
FROM test;

SELECT * FROM testView;

-- DROP VIEW
DROP VIEW testView;


