using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using CLS_BL;
using CLS_DL;

/// <summary>
/// Summary description for PLTaxi
/// </summary>
public class PLTaxi
{
    private string _strUserName;
    public string strUserName
    {
        get { return _strUserName; }
        set { _strUserName = value; }
    
    }

    private string _strPassword;
    public string strPassword
    {
        get { return _strPassword; }
        set { _strPassword = value; }

    }

    private DateTime _currDt;
    public DateTime CurrDt
    {
        get { return _currDt; }
        set { _currDt = value; }
    
    }

   

    private string _Addr1;
    public string Addr1
    {
        get { return _Addr1; }
        set { _Addr1 = value; }

    }

    private string _BankName;
    public string BankName
    {
        get { return _BankName; }
        set { _BankName = value; }

    }
    private string _BranchName;
    public string BranchName
    {
        get { return _BranchName; }
        set { _BranchName = value; }

    }


    private Int32 _BID;
    public Int32 BID
    {
        get { return _BID; }
        set { _BID = value; }
    
    
    }

    private DateTime _LoanDt;
    public DateTime LoanDt
    {
        get { return _LoanDt; }
        set { _LoanDt = value; }
    
    }

    private DateTime _DueDt;
    public DateTime DueDt
    {
        get { return _DueDt; }
        set { _DueDt = value; }

    }


    private decimal _LoanAmt;
    public decimal LoanAmt
    {
        get { return _LoanAmt;}
        set { _LoanAmt = value; }
    
    }
    private decimal _EmiAmt;
    public decimal EmiAmt
    {
        get { return _EmiAmt; }
        set { _EmiAmt = value; }

    }
    private Int64 _AccountNo;
    public Int64 AccountNo
    {
        get { return _AccountNo;}
        set { _AccountNo = value; }
   
    }






    private string _Addr2;
    public string Addr2
    {
        get { return _Addr2; }
        set { _Addr2 = value; }
    }
    private string _Place;
    public string Place
    {
        get { return _Place; }
        set { _Place = value; }
    
    }
    private string _Pincode;
    public string Pincode
    {
        get { return _Pincode; }
        set { _Pincode = value; }
    
    }
    private string _Enteredby;
    public string Enteredby
    {
        get { return _Enteredby; }
        set { _Enteredby = value; }
    
    }
   

    
    private string _Description;
    public string Description
    {
        get { return _Description; }
        set { _Description = value; }

    
    }
    private string _Role;
    public string Role
    {
        get { return _Role; }
        set { _Role = value; }
    }

    private string _DoorAndSteetNo;
    public string DoorAndSteetNo
    {
        get { return _DoorAndSteetNo; }
        set { _DoorAndSteetNo = value; }
    
    }
   
        
    // Employee Maaster

   
   
   
    private string _Title;
    public string Title
    {
        get { return _Title; }
        set { _Title = value; }
    
    }
      
    private string _Eid;
    public string Eid
    {
        get { return _Eid; }
        set { _Eid = value; }
    }
      
    
   
    private DateTime _CreatedDate;
    public DateTime CreatedDate
    {
        get { return _CreatedDate; }
        set { _CreatedDate = value; }   
    }
    private DateTime _UpdatedDate;
    public DateTime UpdatedDate
    {
        get { return _UpdatedDate; }
        set { _UpdatedDate = value; }
    
    }
    // Masters 

    private string _Supplier;
    public string Supplier
    {
        get { return _Supplier; }
        set { _Supplier = value; }


    }
    private decimal _Sell_Budget;
    public decimal Sell_Budget
    {
        get { return _Sell_Budget; }
        set { _Sell_Budget = value; }


    }
    private decimal _Buying_Budget;
    public decimal Buying_Budget
    {
        get { return _Buying_Budget; }
        set { _Buying_Budget = value; }
    }
    private Int64 _ReqPro_SqrFt;
    public Int64 ReqPro_SqrFt
    {
        get { return _ReqPro_SqrFt; }
        set { _ReqPro_SqrFt = value; }
    
    }
    
    private Int64 _Pro_SqFt;
    public Int64 Pro_SqFt
    {
        get { return _Pro_SqFt; }
        set { _Pro_SqFt = value;}
    
    }

    private string _PreFix;
    public string PreFix
    {
        get { return _PreFix; }
        set { _PreFix = value; }


    }
    private string _BrandName;
    public string BrandName
    {
        get { return _BrandName; }
        set { _BrandName = value; }
    
    }

    private string _SourceCode;
    public string SourceCode

    {
        get { return _SourceCode; }
        set { _SourceCode = value; }
    
    }

    private byte[] _ImagContent;
    public byte[] ImagContent
    {
        get { return _ImagContent; }
        set { _ImagContent = value; }

    }

    // Cheguvans Variables

    private string _PlanType;
    public string PlanType
    {
        get { return _PlanType; }
        set { _PlanType = value; }
    
    }

    private string _CustomerName;
    public string CustomerName
    {
        get { return _CustomerName; }
        set { _CustomerName = value; }
    }

    private string _MobileNo;
    public string MobileNO
    {

        get { return _MobileNo; }
        set { _MobileNo = value; }

    }
    private string _EmailId;
    public string EmailId
    {
        get { return _EmailId; }
        set { _EmailId = value; }
    }

    private DateTime _OrderDate;
    public DateTime OrderDate
    {
        get { return _OrderDate; }
        set { _OrderDate = value; }
    
    }
    private decimal _Plan_Price;
    public decimal Plan_Price
    {
        get { return _Plan_Price; }
        set { _Plan_Price = value; }
    }
   

    private string _City;
    public string City
    {
        get { return _City; }
        set { _City = value; }

    }

    private string _PlanID;
    public string PlanID
    {
        get { return _PlanID; }
        set { _PlanID = value; }
       
    }
    private string _Status;
    public string Status
    {
        get { return _Status; }
        set { _Status = value; }
    
    }


    private string _IPAddr;
    public string IPAddr
    {
        get { return _IPAddr; }
        set { _IPAddr = value; }

    }
    private string _HitTime;
    public string HitTime
    {
        get { return _HitTime; }
        set { _HitTime = value; }
    
    }

    private DateTime _HitDate;
    public DateTime HitDate
    {
        get { return _HitDate; }
        set { _HitDate = value; }
    }

     

}