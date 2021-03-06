INSERT INTO S VALUES('S1','WANG',20,'M');
INSERT INTO S VALUES('S2','LIU',19,'M');
INSERT INTO S VALUES('S3','CHEN',22,'M');
INSERT INTO S VALUES('S4','WU',19,'M');
INSERT INTO S VALUES('S5','LOU',21,'F');
INSERT INTO S VALUES('S8','DONG',18,'F');

INSERT INTO C VALUES('C2','MATHS','MA');
INSERT INTO C VALUES('C4','PHYSICS','SHI');
INSERT INTO C VALUES('C3','CHEMISTRY','ZHOU');
INSERT INTO C VALUES('C1','DB','LI');
INSERT INTO C VALUES('C5','OS','WEN');

INSERT INTO SC VALUES('S1','C1',80);
INSERT INTO SC VALUES('S1','C2',70);
INSERT INTO SC VALUES('S1','C3',85);
INSERT INTO SC VALUES('S1','C4',90);
INSERT INTO SC VALUES('S1','C5',70);

INSERT INTO SC VALUES('S2','C1',85);
INSERT INTO SC VALUES('S2','C2',NULL);
INSERT INTO SC VALUES('S2','C4',NULL);

INSERT INTO SC VALUES('S3','C1',90);
INSERT INTO SC VALUES('S3','C2',85);
INSERT INTO SC VALUES('S3','C3',95);

INSERT INTO SC VALUES('S4','C1',75);
INSERT INTO SC VALUES('S4','C3',NULL);
INSERT INTO SC VALUES('S4','C4',70);

INSERT INTO SC VALUES('S5','C1',70);
INSERT INTO SC VALUES('S5','C2',60);
INSERT INTO SC VALUES('S5','C3',80);
INSERT INTO SC VALUES('S5','C5',65);

INSERT INTO SC VALUES('S8','C1',90);
INSERT INTO SC VALUES('S8','C2',NULL);
INSERT INTO SC VALUES('S8','C3',90);
INSERT INTO SC VALUES('S8','C5',NULL);

UPDATE SC SET GRADE=GRADE*1.1 WHERE C#='C2' AND GRADE <>NULL;

DELETE FROM SC WHERE C#=(SELECT C# FROM C WHERE CNAME='PHYSICS');

DELETE FROM S WHERE S#='S8';
DELETE FROM SC WHERE S#='S8';

INSERT INTO PROJECTS VALUES(1,'WRITE C030 COURSE','02-JAN-88','07-JAN-88',500,1,'BR CREATIVE');
INSERT INTO PROJECTS VALUES(2,'PROOF READ NOTES','01-JAN-89','10-JAN-89',600,1,'YOUR CHOICE');

INSERT INTO ASSIGNMENTS VALUES(1,7369,'01-JAN-88','03-JAN-88',50.00,'WR',15);
INSERT INTO ASSIGNMENTS VALUES(1,7902,'04-JAN-88','07-JAN-89',55.00,'WR',20);
INSERT INTO ASSIGNMENTS VALUES(2,7844,'01-JAN-88','10-JAN-89',45.50,'PF',30);

UPDATE ASSIGNMENTS SET ASSIGN_TYPE='WT' WHERE ASSIGN_TYPE='WR';

INSERT INTO PROJECTS VALUES(3,'Hello C030 COURSE','02-JAN-99','07-JAN-99',500,1,'Hello');
INSERT INTO PROJECTS VALUES(4,'HI READ NOTES','01-JAN-79','10-JAN-79',600,1,'Hi');

INSERT INTO ASSIGNMENTS VALUES(3,7369,'01-JAN-99','03-JAN-99',10.00,'WR',10);
INSERT INTO ASSIGNMENTS VALUES(4,7902,'04-JAN-78','07-JAN-79',15.00,'WR',20);

DELETE FROM ASSIGNMENTS WHERE PROJID=3;
DELETE FROM ASSIGNMENTS WHERE PROJID=4;

DELETE FROM PROJECTS WHERE PROJID=3;
DELETE FROM PROJECTS WHERE PROJID=4;

