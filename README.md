-- Manual Charges
select * from ManualChargesDetail
select * from AdditionalCharges
select * from FNGL_Transactions_HI

[CoreDb].[dbo].[SMAM_CompanyCharges_ST]

-- SIF
select * from HRPR_ExportSIFFiles_HI
select * from AdditionalCharges
select * from FNGL_Transactions_HI

-- Cashload
select * from PCMS_Cashload_Master
select * from AdditionalCharges
select * from FNGL_Transactions_HI


SIF > paf > cashload


==================================================
When Add/Edit Employee API hit:

[CoreDb].[dbo].[SMAM_CompanyProducts_ST]
[CoreDb].[dbo].[SMAM_CompanyMst_ST]
[CoreDb].[dbo].[SMAM_CompanyEst_HI]
===================================================
For salary testing:
4 table entry:
Export SIF file
Export sif detail
WPS DB > Sif master, Sif Detail, PAF Master and PAF Detail 

Entry in all 4 tables

HRPR_ExportSIFFiles_HI filename should be in SELECT *
FROM WPSFileProcessing.dbo.SifMaster as coreDbreference

=======================Eligibility of wallet ID===========================


=============/Employee/GetEmployeeBalance API=============

employee table customer ID employee master table
linked with coreDBEngine Accounts table by CustomerID 


=====================Deposit Slip and Balance Update API======================

20.203.21.188
Waqas
Waqas@123456
FNGL_Transactions_HI
HRPR_DepositSlip_TR
D:/Web Portal Publish/WebApi/KP_Portal_Files/UAT
00 - Portal\KPE20220094\Deposit Slips\Deposit Slips_KPE20220094_20221031120742.png


============================Add/Edit Exchange House========
ExchangeHouse Table


==========================Employee/UpdateEmpMolEstID============
[CoreDb].[dbo].[SMAM_CompanyEst_HI]
CoreDb.dbo.EmployeeEstablishmentLinking   //entry should be present in this table
HRMS_EmployeeMst_ST

=============================Employee/GetEmployeeStatusDetail========

============================exchangehouse/AddEditExchangeHouseBranch===

[dbo].[ExchangeHouse]

[dbo].[ExchangeHouseBranch]

====================================================================
ADD EDITEmployee

select * from HRMS_EMPGUID_NEW
select * from HRMS_EmployeeMst_ST 
select * from EmployeeEstablishmentLinking 
select * from SMAM_CompanyEst_HI on behalf of establishmendid
select * from HRMS_EmpDocs_ST
select * from CifEmployeeLinkings
select * from CifMaster


Centiv pe MOL waghaira ki koi restriction nhi
Payd pe MOL should be 13 or 14 digits(im not sure whether its 13 or 14)
===========================Add/EditEmployer====================================

Employer
SMAM_CompanyMst_ST
SMAM_CompanyProducts_ST
SMAM_CompanyDocs_ST
CifMaster	:no  changes
CifCompanyLinkings	:no changes
SMAM_CompanyEst_HI	:no changes


======================Add Edit Employee======================
Employee

select * from HRMS_EMPGUID_NEW
select * from HRMS_EmployeeMst_ST 
select * from EmployeeEstablishmentLinking 
select * from SMAM_CompanyEst_HI on behalf of establishmendid
select * from HRMS_EmpDocs_ST
select * from CifEmployeeLinkings
select * from CifMaster


=====================Upload Salary SIF File==================

select * from HRPR_ExportSIFFiles_HI order by 1 desc
select * from HRPR_ExpSifDetail_TR order by 1 desc
select WalletId,* from CoreDbEngine.dbo.FNGL_Accounts_TR where CustomerId = employee ki Cutomer Id
select * from HRMS_EmployeeMst_ST


===================Change Card Status API==================

SELECT * FROM CoreDbEngine.dbo.SRCC_CardStatusChange_TR A ORDER BY A.CardStatusId desc

SELECT * FROM  CoreDbEngine.dbo.SRCC_StatusChangeResponse_HI A ORDER BY A.ResponeOn desc
[CoreDbEngine].[dbo].[FNGL_Accounts_CardDetails]
SELECT * FROM CoreDb.dbo.HRMS_CardActions_TR A ORDER BY A.CreatedOn DESC

 A= active not embossed
 Y= temporary block		
 X = permanent block

account id:7, 417

Check IsRequested Key. IsRequested Key = 1 means requested from NI.
And IsRequested Key = Null = developer environment

==========================salary file process=============

salary file > SIF > Ack > PAF > DIF

=============================================================

MTP> Manual Transaction Posting, File created, sent to NI, 

Request Mobile API se banay gi
Process: Eligibility criteria, node js se hit aye gi mobile api se
We will create a request which will be in pending
With Web Portal either approve/reject
If approved, background job running which runs every hour, advanced salary job against all companies.
And that file is sent to NI
NI sends a feedback against that file, service is made for that 
In our DB status is updated from that service
If success from NI, status is waiting 


FOR RECOVERY:

-Cash load banti hy
-cash load mei pata lag jaye ga iss banday ne advance liya hy
-Then we will send to NI

Recovery statuses: 
pending

Agar cash load file mei advance pata 

=======================Tables========================
select top 5 * from CoreDb.dbo.FNGL_ManualTransactionBatch_HI -- batch table
select top 5 * from CoreDb.dbo.FNGL_ManualTransactionEmployee_HI -- responselog tables
select top 5 * from FNGL_NIManualTransaction_Feedback_HI --feedback status 0 means success and 1 means rejected


===============================SFTP automation==============================
SELECT * FROM EmPStatus_ST
Select * from HRMS_EmpBatch_HI order by 1 desc
select * from HRMS_EmpTracking_HI order by 1 desc
select * from HRMS_EmployeeMst_ST where EmpStatusId=2

D:/Temp Storage> 00 SFTP_KP> CCS_SFD>UAT>ToBeScreened>Individual

Individual means company

20.203.21.188 server

localhost:8083/hangfire

01> Morning job
02> Evening job

========================For adding salaries against employees=============

PAFMaster
PAF Detail in WPS processing DB


==========================For Recovery of Advanced Salary===========

When Salary is processed from desktop portal (cash load), the entries in 
the dbo.status, dbo.AdvanceSalary ,dbo.AdvanceSalaryDetail tables should 
be updated accordingly

The status id should be 48(pending). Also check the debit and credit amounts against that entry.
