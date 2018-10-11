USE [ecology8]
GO

/****** Object:  View [dbo].[V_SYN_ORG_TO_MIS1]    Script Date: 10/11/2018 17:54:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO








ALTER VIEW [dbo].[V_SYN_ORG_TO_MIS1] AS 
select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where enable='1' and CompanyCode='0001' and orgName not like '华东直营%部'
union all 
select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	'S03801000000' as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where enable='1' and CompanyCode='0001' and orgName like '华东直营%部'

union all
select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where enable='1' and CompanyCode='0003'
union all


-- 苏州一群：华东直营三部 TO 上海
select 
orgId,
	orgCode as hr_orgCode,
	REPLACE(orgcode,'T','S') as orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0001' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else REPLACE(orgcode1,'T','S') end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0004' and enable='1' and SUBSTRING(orgCode,1,6)='T03803' and orgCode not in ('T03803000000','T03803010000','T03803020000','T03803010005','T03803020017')
union all
-- 苏州一群：华东直营四部 TO 上海
select 
orgId,
	orgCode as hr_orgCode,
	REPLACE(orgcode,'T','S') as orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0001' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else REPLACE(orgcode1,'T','S') end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0004' and enable='1' and SUBSTRING(orgCode,1,6)='T03804' and orgCode not in ('T03804000000','T03804110002','T03804110008','T03804060000','T03804060002','T03804060004','T03804060011','T03804060014','T03804060015','T03804060016','T03804110000')

union all
-- 苏州一群：华南直营部 TO 上海
select 
orgId,
orgCode as hr_orgCode,
	REPLACE(orgcode,'T','S') as orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0001' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else REPLACE(orgcode1,'T','S') end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0004' and enable='1' and SUBSTRING(orgCode,1,6)='T03805' 
and orgCode not in ('T03805000000','T03805020000','T03805060001','T03805060002','T03805090013','T03805090015','T03805090016','T03805090001','T03805090017','T03805090018','T03805090007','T03805060000','T03805070000','T03805070001','T03805070002','T03805070003','T03805070006','T03805090011','T03805080000','T03805090000')

union all
-- 苏州一群：华中直营部 TO 上海
select 
orgId,
orgCode as hr_orgCode,
	REPLACE(orgcode,'T','S') as orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0001' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else REPLACE(orgcode1,'T','S') end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0004' and enable='1' and SUBSTRING(orgCode,1,6)='T03806' 
and orgCode not in ('T03806000000','T03806010000','T03806060000','T03806060002','T03806060004','T03806010007')

union all
-- 苏州一群：西南营业一部 TO 上海
select 
orgId,
orgCode as hr_orgCode,
	REPLACE(orgcode,'T','S') as orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0001' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else REPLACE(orgcode1,'T','S') end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0004' and enable='1' and SUBSTRING(orgCode,1,6)='T03807' 
and orgCode not in ('T03807000000','T03807010000','T03807060000','T03807060001','T03807060003','T03807060004','T03807060013','T03807060014','T03807060015','T03807060018')
union all
-- 苏州一群：西南营业二部 TO 上海
select 
orgId,
orgCode as hr_orgCode,
	REPLACE(orgcode,'T','S') as orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0001' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else REPLACE(orgcode1,'T','S') end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0004' and enable='1' and SUBSTRING(orgCode,1,6)='T03818'

union all
select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where enable='1' and CompanyCode='0004' and SUBSTRING(orgCode,1,4)<>'T038'

union all
select
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0001' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0006' and enable='1' and orgCode not in ('F00201000000','F00201030000','F00201010000','F00201020000','F00205000000','F00205010000','F00205020000','F00205030000','F00205040000','S02708000000','S02708060000')
union all
select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where enable='1' and CompanyCode='0007'
union all
select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where enable='1' and CompanyCode='0008'
union all
select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where enable='1' and CompanyCode='0009' and orgCode not in ('F00205010000','F00205040000','F00400000000') and SUBSTRING(orgCode,1,4) not in ('F038','F001')
union all

select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where enable='1' and orgCode='F00100000000'
union all

select 
orgId,
orgCode as hr_orgCode,
	REPLACE(orgcode,'F','T') as orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0004' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	'T00200000000' as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0009' and enable='1' and SUBSTRING(orgCode,1,4)='F001' and orgCode<>'F00100000000' and orgCode1='F00100000000'
union all
select 
orgId,
orgCode as hr_orgCode,
	REPLACE(orgcode,'F','T') as orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0004' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	REPLACE(orgcode1,'F','T') as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0009' and enable='1' and SUBSTRING(orgCode,1,4)='F001' and orgCode<>'F00100000000' and orgCode1<>'F00100000000'

union all
select 
orgId,
orgCode as hr_orgCode,
	REPLACE(orgcode,'F','S') as orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0001' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else REPLACE(orgcode1,'F','S') end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where CompanyCode='0009' and enable='1' and SUBSTRING(orgCode,1,6)='F03802' 
and orgCode not in ('F03802000000','F03802070000','F03802070012','F03802070023','F03802070025','F03802070028','F03802070029','F03802070030','F03802080000','F03802080035','F03802080036','F03802080037','F03802080038','F03802080039','F03802090000','F03802090035','F03802090036','F03802090039','F03802090040','F03802090041','F03802090042')


union all
select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	'0009' as CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where (orgCode1='F00200000000' and CompanyCode='0006' and enable='1') or (orgCode1 in ('F00201000000','F00205000000') and enable='1')
union all
select 
	orgId,
	orgCode as hr_orgCode,
	orgCode,
	ITCode,
	orgName,
	CompanyCode as hr_CompanyCode,
	CompanyCode,
	Leader,
	orgCode1 as hr_orgCode1,
	case when orgCode1 is null or orgCode1=orgCode then null else orgCode1 end as orgCode1,
	orgID1,
	orgname1,
	orgCode2,
	orgID2,
	orgname2,
	enable,
	Lasttime
from hr_DATABASE.hr.dbo.V_SYN_ORG_TO_MIS1 where enable='1' and CompanyCode='0011'

union all 

-- 新增的华东直营处，用来包（华东直营一部，二部，三部，四部），HR没有此部门
select 
	null as orgId,
	null as hr_orgCode,
	'S03801000000' as orgCode,
	null as ITCode,
	'华东直营处' as orgName,
	null as hr_CompanyCode,
	'0001' as CompanyCode,
	null as Leader,
	null as hr_orgCode1,
	'S03800000000' as orgCode1,
	null as orgID1,
	'营运事业一群' as orgname1,
	null as orgCode2,
	null as orgID2,
	null as orgname2,
	'1' as enable,
	'2018-08-23 07:46:00.000' as Lasttime










GO


