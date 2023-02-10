/*
    서브쿼리(Sub Query)
    1. 메인쿼리에 포함하는 하위쿼리를 의미한다.  // 메인셀렉트에 포함하는 하위셀렉트를 의미
    2. 일반적으로 하위쿼리는 괄호()로 묶어서 메인쿼리에 포함한다.
    3. 하위쿼리가 항상 메인쿼리보다 먼저 실행된다.
*/

/*
    서브쿼리가 포함되는 위치
    1. SELECT절 : 스칼라 서브쿼디
    2. FROM절   : 인라인 뷰
    3. WHERE절  : 서브쿼리
*/

/*
    서브쿼리의 실행 결과에 의한 구분
    1. 단일 행 서브쿼리
        1) 결과 행이 1개이다.
        2) 단일 행 서브쿼리인 대표적인 경우
            (1) WHERE절에서 사용한 동등비교(=) 칼럼이 PK, UNIQUE 칼럼인 경우
            (2) 집계함수처럼 결과가 1개의 값을 반환하는 경우
        3) 단일 행 서브쿼리에서 사용하는 연산자
            단일 행 연산자를 사용(=, !=, >, >=, <, <=)
    2. 다중 행 서브쿼리
        1) 결과 행이 1개 이상이다.
        2) FROM절, WHERE절에서 많이 사용된다.
        3) 다중 행 서브쿼리에서 사용하는 연산자
            다중 행 연산자를 사용(IN, ANY, ALL 등)  // 제일 많이 쓰는거 IN
*/

/* WHERE절의 서브쿼리 */

-- 1. 사원번호가 1001인 사원과 동일한 직급(POSITION)을 가진 사원을 조회하시오.
--SELECT 사원정보
--  FROM 사원테이블
-- WHERE 직급 = (사원번호가 1001인 사원의 직급);  -- 메인 = SELECT부터 WHERE까진데 ()안에 있는게 서브쿼리

SELECT EMP_NO, NAME, DEPART, GENDER, POSITION, HIRE_DATE, SALARY
  FROM EMPLOYEE_TBL
 WHERE POSITION = (SELECT POSITION              -- = 이라는 연산자가 들어가면 단일 행
                     FROM EMPLOYEE_TBL  
                    WHERE EMP_NO = 1001);       -- 단일 행  () 안에 EMP_NO가 PK이기 때문에

-- 2. 부서번호가 2인 부서와 동일한 지역에 있는 부서를 조회하시오.
--SELECT 부서정보
--  FROM 부서
-- WHERE 지역 = (부서번호가 2인 부서의 지역)

SELECT DEPT_NO, DEPT_NAME, LOCATION
  FROM DEPARTMENT_TBL
 WHERE LOCATION = (SELECT LOCATION
                     FROM DEPARTMENT_TBL
                    WHERE DEPT_NO = 2);

    
/* SELECT절의 서브쿼리 */





/* FROM절의 서브쿼리 */

















