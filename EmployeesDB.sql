CREATE TABLE EMPLOYEE_WORKED_HOURS(
    ID NUMBER NOT NULL ENABLE, 
    EMPLOYEE_ID NUMBER, 
    WORKED_HOURS NUMBER , 
    WORKED_DATE DATE, 
    CONSTRAINT EMPLOYEE_WORKED_HOURS_PK PRIMARY KEY (ID)
);


  
CREATE TABLE EMPLOYEES(
    ID NUMBER NOT NULL ENABLE, 
    GENDER_ID NUMBER, 
    JOB_ID NUMBER , 
    NAME VARCHAR2(255),
    LAST_NAME VARCHAR2(255),
    BIRTHDATE DATE, 
    CONSTRAINT EMPLOYEES_PK PRIMARY KEY (ID)
);

CREATE TABLE GENDERS(
    ID NUMBER NOT NULL ENABLE,  
    NAME VARCHAR2(255),
    CONSTRAINT GENDERS_PK PRIMARY KEY (ID)
);


CREATE TABLE JOBS(
    ID NUMBER NOT NULL ENABLE,  
    NAME VARCHAR2(255),
    SALARY NUMBER(9,2),
    CONSTRAINT JOBS_PK PRIMARY KEY (ID)
);

create sequence SEQ_ID_EMPLOYEES_WH
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1;
  
create sequence SEQ_ID_EMPLOYEES
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1;

create sequence SEQ_ID_JOBS
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1;
  
INSERT INTO GENDERS VALUES (1, 'FEMENINO');
INSERT INTO GENDERS VALUES (2, 'MASCULINO');

INSERT INTO JOBS VALUES (SEQ_ID_JOBS.NEXTVAL, 'ADMINISTRADOR', 15000.54);
INSERT INTO JOBS VALUES (SEQ_ID_JOBS.NEXTVAL, 'ANALISTA', 15500.54);

INSERT INTO EMPLOYEES VALUES(SEQ_ID_EMPLOYEES.NEXTVAL, 1, 1, 'ANA', 'LOPEZ',TO_DATE('2000-10-01', 'YYYY-MM-DD'));
INSERT INTO EMPLOYEE_WORKED_HOURS VALUES(SEQ_ID_EMPLOYEES_WH.NEXTVAL, 1,8,TO_DATE('2021-07-12', 'YYYY-MM-DD'));



