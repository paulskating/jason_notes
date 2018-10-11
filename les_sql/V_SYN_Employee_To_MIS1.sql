USE [ecology8]
GO

/****** Object:  View [dbo].[V_SYN_Employee_TO_MIS1]    Script Date: 10/11/2018 17:53:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







ALTER VIEW [dbo].[V_SYN_Employee_TO_MIS1] AS 
SELECT empID,empCode,empName,CompCode,orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade FROM hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 WHERE empCode not in('13776','19975','16292','02092','06812') and CompCode not in ('0004','0009','0006','0010')
UNION ALL
SELECT empID,empCode,empName,CompCode,'S03801000000' as orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade FROM hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 WHERE empCode='06812'
UNION ALL
SELECT empID,empCode,empName,CompCode,'S02700000000' AS orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade FROM hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 WHERE empCode='13776'
UNION ALL
SELECT empID,empCode,empName,CompCode,'S03003000000' AS orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade FROM hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 WHERE empCode='19975'

UNION ALL
select empID,empCode,empName,CompCode,orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade from hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 where status='1' and CompCode='0004' and substring(orgcode,1,4)<>'T038'

UNION ALL
select empID,empCode,empName,'0001' as CompCode,REPLACE(orgcode,'T','S') as orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade from hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 where status='1' and CompCode='0004' and substring(orgcode,1,4)='T038'
UNION ALL
select empID,empCode,empName,CompCode,orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade from hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 where status='1' and CompCode='0009' and substring(orgcode,1,4) not in ('F038','F001')

UNION ALL
select empID,empCode,empName,'0001' as CompCode,REPLACE(orgcode,'F','S') as orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade from hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 where status='1' and CompCode='0009' and substring(orgcode,1,4)='F038'
UNION ALL
select empID,empCode,empName,'0004' as CompCode,REPLACE(orgcode,'F','T') as orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade from hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 where status='1' and CompCode='0009' and substring(orgcode,1,4)='F001' and empCode<>'20127'
UNION ALL
select empID,empCode,empName,'0004' as CompCode,'T00101040000' as orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade from hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 where status='1' and empCode='20127'

UNION ALL
select empID,empCode,empName,'0009' as CompCode,orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade from hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 where status='1' and orgcode like 'F00201%'
UNION ALL
select empID,empCode,empName,'0009' as CompCode,orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade from hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 where status='1' and orgcode like 'F00205%'
union all
select empID,empCode,empName,'0001' as CompCode,orgcode,email,sex,inDate,leaveDate,status,shoujihao,Leaderno,Lasttime,Jobcode,Jobname,Jobshortname,Jobgrade from hr_DATABASE.hr.dbo.V_SYN_Employee_TO_MIS1 where status='1' and CompCode='0006' and orgcode not like 'F00201%' and orgcode not like 'F00205%'




GO


