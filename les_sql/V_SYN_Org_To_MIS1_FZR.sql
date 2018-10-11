USE [ecology8]
GO

/****** Object:  View [dbo].[V_SYN_ORG_TO_MIS1_FZR]    Script Date: 10/11/2018 17:54:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







ALTER view [dbo].[V_SYN_ORG_TO_MIS1_FZR] as
select s.*,
case when substring(s.orgCode,1,4)='L009' then '11358'
when s.CompanyCode='0007' then '19648'
when substring(s.orgCode,1,4)='S004' then '13776'
when substring(s.orgCode,1,4)='S027' then '13776'
when substring(s.orgCode,1,4)='S030' then '13776'
when substring(s.orgCode,1,4)='S007' then '13776'
end as manageEmp
from
(select t.*,
case when substring(t.orgCode,1,6)='S03803' then '05139' 
when substring(t.orgCode,1,6)='S03804' then '05706' 
when substring(t.orgCode,1,6)='S03805' then '16659' 
when substring(t.orgCode,1,6)='S03806' then '04438'
when substring(t.orgCode,1,6)='S03818' then '19516'
when substring(t.orgCode,1,6)='S03807' then '19515' 
when substring(t.orgCode,1,6)='S03820' then '20170'
end as areaEmp from 
(select *
,
(select top 1 empCode from 
V_SYN_Employee_TO_MIS1 a
where left(a.orgcode,4) = left(d.orgcode,4)
and a.jobname like '协理'
and a.status='1') as empCode from V_SYN_ORG_TO_MIS1 d where d.enable=1 
and (orgCode1<>'S01100000000' or orgCode1 is null) 
and SUBSTRING(orgCode,1,6) not in ('S03819','S03802','S03803','S03804','S03805','S03806','S03807','S03810','S03818','S03821','S03820')
and CompanyCode not in ('0003','0009','0007') 
and orgCode not in ('S00400000000','S00401000000','S02700000000','S02701000000','S02701010000','S02704000000','S04000000000')
and (orgCode1<>'S01112000000' or orgCode1 is null)

union all

select *,'11358' from V_SYN_ORG_TO_MIS1 s where s.enable=1 and CompanyCode = '0003'
union all
select *,'11358' from V_SYN_ORG_TO_MIS1 s where s.enable=1 and CompanyCode = '0009'
union all
select *,'19648' from V_SYN_ORG_TO_MIS1 s where s.enable=1 and CompanyCode = '0007'

union all
select *
,
(select top 1 empCode from 
V_SYN_Employee_TO_MIS1 a
where left(a.orgcode,6) = left(f.orgcode,6)
and a.jobname like '协理'
and a.status='1') as empCode from V_SYN_ORG_TO_MIS1 f where f.enable=1 and f.orgCode in ('S01109000000','S01114000000')

union all
select *,'10208' from V_SYN_ORG_TO_MIS1 v where v.enable=1 and v.orgCode='S01112000000' or v.orgCode1='S01112000000'
union all
select *,'13776' from V_SYN_ORG_TO_MIS1 w where w.enable=1 and w.orgCode in ('S00400000000','S00401000000','S02700000000','S02701000000','S02701010000','S02704000000','S04000000000')

union all
select *,'06812' from V_SYN_ORG_TO_MIS1 s where s.enable=1 and SUBSTRING(s.orgCode,1,6) in ('S03819','S03802','S03803','S03804')
union all
select *,'00592' from V_SYN_ORG_TO_MIS1 t where t.enable=1 and SUBSTRING(t.orgCode,1,6) in ('S03805','S03806','S03807','S03810','S03818','S03821')
union all
select *,'01175' from V_SYN_ORG_TO_MIS1 u where u.enable=1 and SUBSTRING(u.orgCode,1,6) in ('S03820')
) as t) as s







GO


