USE [ecology8]
GO

/****** Object:  View [dbo].[V_SYN_Company_TO_MIS1]    Script Date: 10/11/2018 17:47:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






ALTER VIEW [dbo].[V_SYN_Company_TO_MIS1] AS 
SELECT 
Compid,CompCode,CompName,CompName1,null as parentid, enable,Lasttime 
FROM hr_DATABASE.hr.dbo.V_SYN_Company_TO_MIS1 
WHERE enable='1' and CompCode not in ('0000','0010','0006')





GO


