======================DONT USE THESE TWO==================
 49790000015
Eligible
49790000013

Eligible normal  					49790000005
Ineligible due to less than 20 days between 2 months 	49790000007
Ineligible due to not given salary advance back on time	49790000008
Eligible and taken advance but salary not received 	49790000009
Eligible but company not eligible  			4975000003
Ineligible due to salary less than required. 		49790000011

DONT USE

Please Dont Delete data of AdvanceSalaryId 102 and 103

Eligible normal  										49790000005  kirankumari  	  8453
Ineligible due to less than 20 days between 2 months 	49790003875  ansarali		  1752
Ineligible due to not given salary advance back on time	49790000008	 SARIKASUDHARMAN  0994
Eligible and taken advance but salary not received 		49790000009  mubinagulamrasul 0974
Eligible but company not eligible  						4975000003   shahzaibali  	  0994
Ineligible due to salary less than required. 			49790000011	 mezbanaeem		  0934
=======================================================

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

PAFMaster
PAF Detail in WPS processing DB

there is one column in sifMaster with the name of PafrefId
tghrough you can relate sifMaster with Pasf

=======================Eligibility of wallet ID===========================


==============advanced salary using Web Portal=============
select * from AdvanceSalary  -- shows current status
select *  from AdvanceSalaryDetail
select * from AdvanceSalaryStatustracking   --shows previous status
select * from AdvanceSalaryHeader

DEBIT = what we receive
Credit = what we give
Transaction refernece no is incremental

select
	PayrollDate as SalaryDate, t1.Month as SalaryMonth, t1.Year as SalaryYear,
	
	t2.NetAmount as SalaryAmount, t2.EmpPersonalNumber
	from
	WPSFileProcessing.dbo.PAFMaster as t1
	join WPSFileProcessing.dbo.PAFDetail as t2 on t1.Id = t2.PAFMasterId
where t2.EmpPersonalNumber = '10001078949383'


3:54
--update WPSFileProcessing.dbo.PAFMaster
	--set PayrollDate = '2022-08-05'
	--where Id = 1


Advanced salary eligibility amount = 

30% of:

-last salary OR average salary of last 3 months
(whichever is lower)


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


===========================Card Activate API===============
Values in SRCC_CardActivation_TR table

==========================salary file process=============

salary file > SIF > Ack > PAF > DIF

=============================================================

MTP> Manual Transaction Posting, File created, sent to NI, 

Request Mobile API se banay gi
Process: Eligibility criteria, node js se hit aye gi mobile api se
We will create a request which will be in pending
With Web Portal either approve/reject
If approved, background job running which runs every hour, advanced salary 
job against all companies.
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

Jb NI Ko filse send ho jayegi then usi folder mai uploaded k 
folder mai move hogi INBound mai nhi hogi ab

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

=====================Recovery Detail==================

ONLY WORKS WHEN status: disburse

RecoveryStatusId: Pending, partially receive, null

ENTRY MUST BE PRESENT IN THESE TABLES BELOW:

-PAF Master
-PAF detail
-SIF Master
-SIF Detail
-topUpRequest tooo

-Cashload Master and Cashload Detail TABLES
Status in PCMS_STATUS_CL table.

WPS ki PAF ENTRY BANAY GI AND USS HISAAB SE SALARY AYE GI 

Select top 1 CashloadMasterId from CoreDb.dbo.PCMS_Cashload_Master
  where
  Status =@StatusId and Companyid= @Companyid and Productid =@Productid )
  Select * from CoreDb.dbo.PCMS_Cashload_Detail
  where CashloadMasterId = 15 and Amount != 0   

-- above will appear in cash load file


If penalty =1 in SELECT * FROM [CoreDb].[dbo].[SystemSettings] table,
SELECT * FROM [CoreDb].[dbo].[AdvanceSalaryDetail] will have 3 entries,
1 seperate entry for charges

Also check the due date along with penalty =1, if due date has passed only
then charges entry will come

For partially recovery, 1 debit and 1 credit entry both of the same amount

If fully recovered, 1 debit entry and 1 credit entry with full payment

IsRecoveredDate, ModifiedBy, ModifiedOn, IsrecoveredJob will all change 
in Advanced Salary Table

===================Advanced salary FULL Detail=========================
select *  from AdvanceSalary
select *  from AdvanceSalaryDetail
select * from AdvanceSalaryStatustracking
select * from AdvanceSalaryCharges


when salary first comes, it goes to pending on Web portal
Accept and send to bank using web portal

Bank ID and Password on WEBPORTAL(send to bank wali requests yahan aein gi) :
User: sadaf	
Password: Sadaf@2021

If bank approves, advanced salary table status changes
Recovery status is pending and advanced status ID is 40

Due date mei last salary date+ 1 month and 10 Days add kero


Loan Pay company ID we will make when loans are given

JobStatus =1 if job hasnt run

JobName = ProcessSentMTPtoNI on hangfire server

NI wants seperate file for each company 

IServiceManager.ProcessSendMTPFileToNI >> RUN THIS FIRST

filename mei productcode + MTP + datetime

IServiceManager.ProcessAdvanceSalaryMtp job purpose(file bana deti hy
run with other job): 

D:\00 - SFTP KP\NI_PCMS\PROD\Outbound\2022\Nov\111122 filepath for job	

isme records girein ge when job runs:	
select * from FNGL_ManualTransactionBatch_HI order by 1 desc
select * from FNGL_ManualTransactionEmployee_HI where BatchNo=28

CHECK ALL STATUSES RIGOUROUSLY



FOR processsendMTPfiletoNIJOB(iska koi status nhi):

aaj ki date mei jakay jitni files hein unko NI bhej dega

1>OUTBOUND FILES SENT TO SFTP at NI
2>OUTBOUND FILES WHICH ARE SUCCESSFULLY SENT TO SFTP come to inbound

IMPORTANT NOTE: Folder of today must be created manually in 
WINSCP for outbound/inbound to work
 

After this(this job is not yet made):

NI sends feedback file
NI returns 2 things to us, TransactionRefNo and approve/Reject status

If success, success response in both debit/credit
AdvanceSalaryDetail(this table will only have 
success/fail) will update and will be success 
and go to AdvanceSalary Table.

Advance Salary will be disbursed status if both debit/credit transactions
are successful

FOR SFTP ACCESS: Download: WinSCP
SFTP SERVER IP : 20.74.153.18
SFTP USERNAME : waqas
SFTP PASSWORD : Waqas@123456
PortNo:22


Advanced Eligibility API
Eligible = "01";
NotEligible = "02";
EligibleAndPending = "03";
EligibleAndDue = "04";

DO CHECK TRANSACTIONS TABLE ENTRIES and match against SIF IF
AND SMS_ALERT TABLE 
Above Both will run after feedback service


=================Feedback Service WILL BE RUN AFTER SEND TO NI=================================

Send LoanPayCompanyID manually for now in AdvanceSalary table

NI se file mil jaati hy feedback ki, 
-Iske behalf pe disbursed, patiallly failed and failed


Feedback service k liye file banani hogi

datetime || filename || walletID || transaction reference No || Error code || error desc || status (0 is for success)

After service is run two tables will have entry:

1)FNGL_ManualTransactionEmployee_HI
2)FNGL_NIManualTransaction_Feedback_HI 

AND ALSO IN TRANSACTION TABLE

Select* from transactions
Select * from FNGL_TRANSACTION TYPES

Aik debit transaction banay gi in above tables with amount 

SifID ka record bhi banay gaS

SELECT * from SIFMaster
Select * from cifCompanyLinkings
Select* from cifEmployeeLinking
  (category code 00 = company, 01 = employee)  ===> check sifto(employee) and siffrom (loan pay company ID) 


For transaction statuses, go to status table and check

Jo transactions successful mark hogaye, unme company balance mei add subtract hogi amount(company balance mei)

SMSALERTS_----------> alerts Queue
Transactions --------> Transactions (check to CIF and from CIF)


==================AT RECOVERY SEND TO NI SERVICE WILL RUN TOO====
UPLOADED K FOLDER MEI FILE RAKHNA AFTER SERVICE RUNS

CHECK STATUSES IN FNGL_TRANSTYPE

NIPCMS_FEEDBACK SERVICE

LATE FEES ARE NOT DEDUCTED FROM COMPANY TABLES

D:\Kamel Pay SFTP ismai Year Month And Date se folder bna kr file rakh dena wo read krlega

D:\Kamel Pay SFTP\2022\Nov\101122\MTP is Folder mai

FEEDBACK WILL RUN BEFORE AND AFTER ADVANCE SALARY AND RECOVVERY

======================UPDATES/FIXES=============================
1.   MTP Maker & Checker - Priority 1
2.   NI PCMS Feedback service - Changes and addition - Priority 1
a.   Modify the existing CBF Feedback - To be changed to SP. Existing one is very slow
b.  Modify the existing CASH LOAD - Record the feedback only in feedback table. Remove all other entries
c.  Card Operation Feedback Service - New
d.  Customer Demographics Update – New
3.   NON WPS Cash Load - Desktop - Priority 1
 a.   After successful disbursement of cash load file - automatically change the status to 'DISBURSED' in PCMS_CashLoadMaster
b.   Add debit entry of whole amount in FNGL_Transaction and refer Cash load master Id
4.   Card Operations - Desktop - Priority 1
a.   Always retrieve only pending card operations
b.   Refresh the page after one successful export
c.    Issue in company name - After one pending export, company name is same for all the other pending ones
d.   Created by & Created on is empty in both tables
                                                          HRMS_CardOperationBatch_HI
                                                          HRMS_CardOperationEmployee_HI
e.   Table 'HRMS_CardOperationBatch_HI' Should have reference to comasterId in the table 'CardOperationMaster'


Pending PAF
============================CardPinSET API=======================

CardDetail Table


========================Load Centiv Card========================

Request generated with 2 entries in:

SELECT * FROM PCMS_Cashload_Master
SELECT * FROM PCMS_Cashload_Detail

Will move to the Web Portal after request is approved from the 
Admin Portal

====================For Whitelist/Blacklist company========

Tables: 
select * from SMAM_CompanyWhitelisting
Select * FROM status
SELECT * FROM status type


-By default, company is NULL. Then we can either whitelist the company 
or blacklist the company


====================CashLoad Master Shamaz task=================
 
Entries must exist in Cashload Master table with status 2(pending)
and also  CoreDb.dbo.PCMS_Cashload_Detail tables

Entries must fall in select * from CoreDb.dbo.FNGL_Transactions_HI table
with cashloadID in this table = CashloadMasterID From cashloadmaster table

SELECT * FROM cashloademployee

SELECT * FROM company_MST //company balance should be deducted

USER BALANCE SHOULD BE UPDATED IN CoreDbEngine.dbo.FNGL_Accounts Table


======================Update Employee Mobile Number=====================


Entry in UserMobileNumberTracking table

If CIF exists against employee, then no entry in CIF Master
If CIF does not exist against employee, then entry in CIF Master



======================Card Operation Feedback Service===============

SELECT * FROM UserMobileTracking 
jiska IsUpdated ------> 0 hy uski ye service file banaye gi SFTP mei
CDUF ki Csv file bana de gi

"CDUBaseUrl": "D:\\00 - SFTP KP\\CDU",
  "CDUNISFTPBaseUrl": "293\\CDU"

IsUpdate ka status hojaye ga 1 and phone number will be updated in 
employee_MST table

ServiceName: SendUserUpdatedInfoToNI

========================For creating app user data=====================

HRMS_EmpDocs_ST
SRCC_UserLogin_ST

api/mobile/registration
api/mobile/NewValidateUser

when docid = 6 (emiratesid)
docid=8 (passprot)

LINK WALLET ID TO EMPID and EMPID to EmiratesID


========================CBF Feedback=====================

Entry will fall in these 3 table:
HRMS_EmpBatch_HI
HRMS_EmpTracking_HI
FNGL_Accounts_TR (ONLY IF ACCOUNT DOESNT EXIST)

service: ImportCBFFeedback
Filename starts with 0120

Filename is a column inside 0120--xxxx file 
In that column write the name as 
Path: Kamel Pay SFTP\Regswatch_Compliance\Cleared\2022\Nov\181122


READ PATH: D:\Kamel Pay SFTP\2022\Nov\251122
D:\Kamel Pay SFTP\2022\Nov\251122 also for CashloadFeedbackService



========================Serivce: ImportCashLoadFeedback=============

File must start with CL-*Feedback
ReadPath: D:\Kamel Pay SFTP\2022\Nov\251122 also for CashloadFeedbackService


=======================For Mobile Number tracking==============

3 tables:
User_Login
Employee_MST
UserMobileTracking



=====================For UpdateMobileNumber API=============

Entry will fall in the UserMobileNumberTracking table
>As per Ahsan, 2 different users can have the same numbers

CIF Linking primary ID  is checked from Employee CIF Linkings
EMPID from EmployeeMst and AccountsTR

========================For validating Mobile API===========

User_Login table
EmployeeMst table 


=======================For Establishment Linking================

Establishment linking created from employer portal
Then go to Owais portal>WPS Administration > MOL Establishment Tab

This is linked with the select * from SMAM_CompanyEst_HI table


===================Company Salary Brackets===================

select * from CompanyLoanBrackets

Company can make their own Advance Salary Brackets When whitelisting
from the Owais portal

================== Debit API =============================

Data required:

FNGL_Accounts_TR get reqAccounts (by walletid)
accountDetail,reqEmployee get (from reqAccounts)
HRMS_CardTransactions_TR pinSet add (from cardDebit,accoutDetail,reqEmployee)

Info updated in these tables:
update account balance in FNGL_Accounts_TR
 get msgid from (dbEngine.SP_GetAPIIncrementalValue(6).First().Value)
SRCC_CardDebitTrans_TR CardPinSet add	(from pinSet and cardDebit)

if local
	generate response
	SRCC_DebitTransResponse_HI add from response


=====================For checking Advance Salary Month===================

select * from WPSFileProcessing.dbo.PAFMaster where Id in
  (SELECT PAFMasterId FROM WPSFileProcessing.dbo.PAFDetail where EmpPersonalNumber = '10022049291562')
  exec [dbo].[GetEmployeeLastSalaryMonthWise] '10022049291562'


==================Desktop Card Operations====================

Login with RDP
Go to PCMS file processing 
Go to Card operations
SELECT BULK LOAD Entry(Non WPS)


Tables:

select * from HRMS_CardOperationBatch_HI

select * from CardOperationMaster WHERE status = 2 (pending)
PCMS_Status_CL(check statuses table)


HRMS_CardOperationBatch_HI
HRMS_CardOperationEmployee_HI

 SELECT * FROM PCMS_Cashload_Master WHERE CashloadMasterId = 75

  SELECT * FROM PCMS_Cashload_Detail

  SELECT * FROM FNGL_Transactions_HI

-Always retrieve only pending card operations
-Refresh the page after one successful export
-Issue in company name - After one pending export, 
company name is same for all the other pending ones
-Created by & Created on is empty in both tables
                                              HRMS_CardOperationBatch_HI
                                              HRMS_CardOperationEmployee_HI
-Table 'HRMS_CardOperationBatch_HI' 
Should have reference to comasterId in the table 'CardOperationMaster'

===============================Deposit Slip changes=================

Status should go to deposit TR table
From status table
When approved from HRCMS admin portal

==================Changes in Delivery Portal=============================

1. Check if users card is already activated (both New card & Replacement Card)

Affected Tables: Employeemst, account_tr, usp_export
2. If the card is activated show the existing message
3. For replacement card - Get the data available in the system
4. If user already has mobile number registered, no provision to change the mobile No. Only Default mobile number can be changes which is 97150000***
5. View the emirates Id picture if already available
6. Proceed for Activation

For Card Delivery Flow Of Process

1 (New API)Cards/GetEmployeeDetailsForDelivery?walletId=walletrid&execId=1 --- execId is 1 -----> To Get Against WalletId

2 (AlreadyTested)Employee/UpdateEmployeeMobile?empId= &mobile = &createdBy = To Update EmployeeMobileNo
3 (AlreadyTested)Employee/AddEditEmployeeDocuments To Update Employee Document

4 (AlreadyTested)Cards/ActivateCard

5 (New API)Cards/CardDeliverySaveImage
{

  "customerId": "31",
  "CombinedImageEmiratesId": "https://hrcms.s3.ap-southeast-1.amazonaws.com/employeesdepositslip/client/634d265fedf6e7255c944e49/1668160268382",
  "FrontEmiratesId": "https://hrcms.s3.ap-southeast-1.amazonaws.com/employeesdepositslip/client/634d265fedf6e7255c944e49/1668160268382",
  "BackEmiratesId": "https://hrcms.s3.ap-southeast-1.amazonaws.com/employeesdepositslip/client/634d265fedf6e7255c944e49/1668160268382",
  "FullEmiratesId": "https://hrcms.s3.ap-southeast-1.amazonaws.com/employeesdepositslip/client/634d265fedf6e7255c944e49/1668160268382"

}

BaseFilePath : D:\00 - SFTP KP\CCS_SFD\UAT



To check eligible user:
From 
		Vw_EmployeeAccounts as V
		Inner Join CoreDb.dbo.HRMS_USPExport_HI as ex on 
		ex.WalletId = v.WalletId
	Where 
		v.WalletId = @WalletId and 
		ex.CardAssignToExec = @ExecId and 
		ex.CardDeliveredOn is null and 
		EmployeeActive = 1 and 
		AccountActiveStatus = 'Y'and 
		CardStatus = '1'


Only works for WalletID: 49780000000

