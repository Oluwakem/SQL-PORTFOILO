 /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [STAFF]
      ,[MANAGER]
      ,[TYPE_OF_EMPLOYMENT]
  FROM [WHO_JOINED_BEFORE_MANAGER].[dbo].[WHO JOINED]

  alter table employees
  alter column manager varchar(20)--change manager data type from bit to varchar

  UPDATE Employees
  SET MANAGER = 'NO'
  WHERE MANAGER = 0
  select * from employees

  update employees
  set manager= 'YES'
  WHERE MANAGER = '1'

  SELECT A.NAME, A.Employment_date     
  from employees A
  JOIN EMPLOYEES B ON A.MANAGER = B.NAME ----CRITERIA USING FUNMI
  WHERE A.EMPLOYMENT_DATE < B.EMPLOYMENT_DATE
  ORDER BY EMPLOYMENT_DATE
  

  UPDATE EMPLOYEES
  SET MANAGER = 'FUNMI' 