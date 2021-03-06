

CREATE TABLE DEPT_MASTER
(
            DEPT_ID NUMBER(4) PRIMARY KEY,
            DEPT_NAME VARCHAR2(25) NOT NULL
)
/
Insert into DEPT_MASTER
   (DEPT_ID, DEPT_NAME)
 Values
   (101, 'COMPUTER SCIENCE');
Insert into DEPT_MASTER
   (DEPT_ID, DEPT_NAME)
 Values
   (102, 'RESEARCH');
Insert into DEPT_MASTER
   (DEPT_ID, DEPT_NAME)
 Values
   (103, 'BUSINESS MANAGEMENT');
COMMIT;


CREATE TABLE COURSE_MASTER
(
              COURSE_ID VARCHAR2(5) PRIMARY KEY,
              COURSE_NAME VARCHAR2(15),
              DEPT_ID NUMBER(4) REFERENCES DEPT_MASTER
)
/
Insert into COURSE_MASTER
   (COURSE_ID, COURSE_NAME, DEPT_ID)
 Values
   ('C0001', 'MCA', 101);
Insert into COURSE_MASTER
   (COURSE_ID, COURSE_NAME, DEPT_ID)
 Values
   ('C0002', 'MSC(IT)', 101);
Insert into COURSE_MASTER
   (COURSE_ID, COURSE_NAME, DEPT_ID)
 Values
   ('C0003', 'BCA', 101);
Insert into COURSE_MASTER
   (COURSE_ID, COURSE_NAME, DEPT_ID)
 Values
   ('C0004', 'BSC(IT)', 101);
Insert into COURSE_MASTER
   (COURSE_ID, COURSE_NAME, DEPT_ID)
 Values
   ('C0005', 'MBA', 103);
Insert into COURSE_MASTER
   (COURSE_ID, COURSE_NAME, DEPT_ID)
 Values
   ('C0006', 'BBA', 103);
COMMIT;


CREATE TABLE STRENGTH_MASTER
(
            DEPT_ID NUMBER(4) REFERENCES DEPT_MASTER,
            COURSE_ID VARCHAR2(5) REFERENCES COURSE_MASTER,
            MAX_STUD_ALLOW INT
)
/
Insert into STRENGTH_MASTER
   (DEPT_ID, COURSE_ID, MAX_STUD_ALLOW)
 Values
   (101, 'C0001', 240);
Insert into STRENGTH_MASTER
   (DEPT_ID, COURSE_ID, MAX_STUD_ALLOW)
 Values
   (101, 'C0002', 60);
Insert into STRENGTH_MASTER
   (DEPT_ID, COURSE_ID, MAX_STUD_ALLOW)
 Values
   (101, 'C0003', 500);
Insert into STRENGTH_MASTER
   (DEPT_ID, COURSE_ID, MAX_STUD_ALLOW)
 Values
   (101, 'C0004', 300);
Insert into STRENGTH_MASTER
   (DEPT_ID, COURSE_ID, MAX_STUD_ALLOW)
 Values
   (103, 'C0005', 120);
Insert into STRENGTH_MASTER
   (DEPT_ID, COURSE_ID, MAX_STUD_ALLOW)
 Values
   (103, 'C0006', 600);
COMMIT;


CREATE TABLE STUDENT_DETAIL
(
                  DEPT_ID NUMBER(4) REFERENCES DEPT_MASTER,
                  COURSE_ID VARCHAR2(5) REFERENCES COURSE_MASTER,
                  STUD_NO VARCHAR2(5),
                  STUD_NAME VARCHAR2(30) NOT NULL,
                PRIMARY KEY(DEPT_ID,COURSE_ID,STUD_NO)
)
/

Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0001', 'S0001', 'PARAG SHUKLA');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0001', 'S0002', 'RAJEN TRIVEDI');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0001', 'S0003', 'MAYUR GOR');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0001', 'S0004', 'NIKUNJ POPAT');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0001', 'S0005', 'JANAK DHANANI');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0002', 'S0001', 'RAM');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0002', 'S0002', 'KRISHNA');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0002', 'S0003', 'LAXMAN');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0002', 'S0004', 'BHARAT');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0002', 'S0005', 'AISHWARYA');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (103, 'C0005', 'S0001', 'AMITABH');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (103, 'C0005', 'S0002', 'SALMAN');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (103, 'C0005', 'S0003', 'RITESH');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (103, 'C0006', 'S0001', 'ABHISHEK');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (103, 'C0006', 'S0002', 'RAHUL GANDHI');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (103, 'C0006', 'S0003', 'RAM KAPOOR');
Insert into STUDENT_DETAIL
   (DEPT_ID, COURSE_ID, STUD_NO, STUD_NAME)
 Values
   (101, 'C0001', 'S0006', 'ASHISH VAGHASIA');
COMMIT;