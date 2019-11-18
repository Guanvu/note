SELECT S#,SNAME FROM S WHERE S# IN (SELECT S# FROM SC WHERE C#='C2');
SELECT SNAME,AGE FROM S WHERE S# NOT IN (SELECT S# FROM SC WHERE C#='C2');
SELECT S#,COUNT(C#),AVG(GRADE) FROM SC GROUP BY S# ORDER BY S# ;

SELECT * FROM EMP;
SELECT ENAME,DEPTNO,SAL FROM EMP WHERE SAL BETWEEN 1000 AND 2000;
SELECT DEPTNO,DNAME FROM DEPT ORDER BY DNAME;
SELECT * FROM EMP WHERE DEPTNO BETWEEN 10 AND 20 ORDER BY ENAME;
SELECT ENAME FROM EMP WHERE ENAME LIKE '%TH%' OR ENAME LIKE '%LL%';
SELECT * FROM EMP WHERE to_char(HIREDATE,'YYYY')='1982';
SELECT DEPTNO,AVG(SAL) FROM EMP GROUP BY DEPTNO;
SELECT ENAME,SAL,DEPTNO FROM EMP WHERE SAL IN(SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
SELECT COUNT(EMPNO) FROM EMP GROUP BY DEPTNO;
--SELECT COUNT(EMPNO) FROM EMP WHERE SAL>AVG(SAL) GROUP BY DEPTNO;
--HAVING SAL>AVG(SAL);
--SELECT COUNT(EMPNO) FROM EMP WHERE SAL>(SELECT AVG(SAL) FROM EMP GROUP BY DEPTNO);
SELECT ENAME,SAL,DEPTNO FROM EMP WHERE SAL IN(SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
SELECT E.DEPTNO ,D.DNAME,COUNT(E.DEPTNO) FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO AND E.SAL > (SELECT AVG(SAL) FROM EMP) GROUP BY E.DEPTNO,D.DNAME;