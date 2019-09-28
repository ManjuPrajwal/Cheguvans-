using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using CLS_BL;
using CLS_DL;

/// <summary>
/// Summary description for CHEBL
/// </summary>
public class CHEBL
{
    SQLDB objSQL = new SQLDB();
    CLS_ErrorLog BLErrorLog = new CLS_ErrorLog();

    DataTable _dt = new DataTable();
    int _INS = 0;
    int Cnt_Val;



    //public int InsertUserMaster(PLTaxi ObjPL)
    //{

    //    try
    //    {
    //        SqlParameter[] _Param ={
    //                              new SqlParameter("@UserName",ObjPL.strUserName),
    //                              new SqlParameter("@Password",ObjPL.strPassword),
    //                              new SqlParameter("@MobileNo",ObjPL.MobileNO),
    //                              new SqlParameter("@Role",ObjPL.Role),
    //                              new SqlParameter("@Created_Id",ObjPL.Enteredby),
    //                              new SqlParameter("@Created_Date",ObjPL.CreatedDate),
    //                              new SqlParameter("@Admin","Y"),
    //                              new SqlParameter("@Status","V"),
                                  
    //                            };

    //        _INS = objSQL.ExecuteProcedure("Usp_UserMaster_Insert", _Param);
    //    }
    //    catch (Exception Ex)
    //    {
    //        BLErrorLog.Write(Ex);
    //    }


    //    return _INS;

    //}
    public int InsertEndUserMaster(PLTaxi ObjPL)
    {

        try
        {
            SqlParameter[] _Param ={
                                  new SqlParameter("@UserName",ObjPL.strUserName),
                                  new SqlParameter("@Password",ObjPL.strPassword),
                                  new SqlParameter("@MobileNo",ObjPL.MobileNO),
                                  new SqlParameter("@EmailId",ObjPL.EmailId),
                                  new SqlParameter("@CreateDt",ObjPL.CreatedDate),
                                  new SqlParameter("@Status","Y"),
                                                                
                                };

            _INS = objSQL.ExecuteProcedure("Usp_ENDUSERMASTER_Insert", _Param);
        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }


        return _INS;

    }

    public int InsertPlanTypeMaster(PLTaxi ObjPL)
    {
        try
        {
            SqlParameter[] _param ={
                                  new SqlParameter("@PLANTYPE",ObjPL.PlanType),
                                  new SqlParameter("@PLAN_PRICE",ObjPL.Plan_Price),      
                                      };
            _INS = objSQL.ExecuteProcedure("Usp_PLANTYPEMASTER_Insert", _param);


        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }
        return _INS;


    }

    public int InsertCutomerOrder(PLTaxi ObjPL)
    {
        try
        {
            SqlParameter[] _param ={
                                  new SqlParameter("@CUSTOMERNAME",ObjPL.CustomerName),
                                  new SqlParameter("@MOBILENO",ObjPL.MobileNO),      
                                  new SqlParameter("@EMAILID",ObjPL.EmailId), 
                                  new SqlParameter("@CITY",ObjPL.City), 
                                  new SqlParameter("@PLANTYPEID",ObjPL.PlanID), 
                                  new SqlParameter("@ORDERDATE",ObjPL.OrderDate), 
                                  new SqlParameter("@STATUS",ObjPL.Status), 
                                      };
            _INS = objSQL.ExecuteProcedure("USP_CUSTOMER_ORDER_INSERT", _param);


        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }
        return _INS;


    }



    public DataTable GetOrders()
    {

        try
        {

            _dt = objSQL.GetData_DT("SELECT P.PLANTYPEID, C.ORDERID, C.CUSTOMERNAME, C.MOBILENO, C.EMAILID, C.CITY, C.ORDERDATE, C.STATUS, P.PLANTYPE, P.PLAN_PRICE FROM dbo.CUSTOMER_ORDER AS C INNER JOIN dbo.PLANTYPEMASTER AS P ON C.PLANTYPEID = P.PLANTYPEID");
        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }

        return _dt;


    }


    public DataTable GetPlanType()
    {

        try
        {

            _dt = objSQL.GetData_DT("SELECT PLANTYPEID,PLANTYPE,PLAN_PRICE FROM PLANTYPEMASTER");
        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }

        return _dt;
   }

   public DataTable GetBankMaster()
    {

        try
        {

            _dt = objSQL.GetData_DT("SELECT BID, BANKNAME FROM BANKMASTER");
        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }

        return _dt;
    }





    public int InsertCutomerQuote(PLTaxi ObjPL)
    {
        try
        {
            SqlParameter[] _param ={
                                  new SqlParameter("@CUSTOMERNAME",ObjPL.CustomerName),
                                  new SqlParameter("@MOBILENO",ObjPL.MobileNO),      
                                  new SqlParameter("@EMAILID",ObjPL.EmailId), 
                                  new SqlParameter("@CITY",ObjPL.City), 
                                  new SqlParameter("@PLANTYPEID",ObjPL.PlanID), 
                                  new SqlParameter("@STATUS",ObjPL.Status), 
                                      };
            _INS = objSQL.ExecuteProcedure("USP_CUSTOMER_QUOTE_INSERT", _param);


        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }
        return _INS;


    }

    public int InsertBankMaster(PLTaxi ObjPL)
    {
        try
        {
            SqlParameter[] _param ={
                                  new SqlParameter("@BANKNAME",ObjPL.BankName),
                                  new SqlParameter("@BRANCH",ObjPL.BranchName),      
                                
                                      };
            _INS = objSQL.ExecuteProcedure("Sp_BANKMASTER_INSERT", _param);


        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }
        return _INS;


    }






    public DataTable GetQuotes()
    {

        try
        {

            _dt = objSQL.GetData_DT("SELECT  C.QUOTEID, C.CUSTOMERNAME, C.MOBILENO, C.EMAILID, C.CITY, C.ORDERDATE, C.STATUS, P.PLANTYPE, P.PLAN_PRICE FROM dbo.CUSTOMER_QUOTE AS C INNER JOIN dbo.PLANTYPEMASTER AS P ON C.PLANTYPEID = P.PLANTYPEID");
        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }

        return _dt;


    }


    public DataTable GetHitList()
    {

        try
        {

            _dt = objSQL.GetData_DT("select * from HITLIST order by HITDATE desc");
        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }

        return _dt;


    }


       public DataTable GetLoanList()
    {

        try
        {

            _dt = objSQL.GetData_DT("SELECT  L.LOANID as LOANID, B.BANKNAME as BANKNAME , B.BRANCH as BRANCH, B.BID as BID  , L.LOANDT as LOANDT,L.AccountNo as AccountNo ,L.DUEDT as DUEDT, L.LAONAMT as LAONAMT, L.EMIAMT as EMIAMT, L.STATUS as STATUS FROM    dbo.BANKMASTER AS B INNER JOIN  LOANMASTER AS L ON B.BID = L.BID  order by L.DUEDT  ASC");
        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }

        return _dt;


    }



    public int InsertHitList(PLTaxi ObjPL)
    {
        try
        {
            SqlParameter[] _param ={
                                  new SqlParameter("@IPADDR",ObjPL.IPAddr),
                                  new SqlParameter("@HITDATE",ObjPL.HitDate),      
                                  new SqlParameter("@HITTIME",ObjPL.HitTime), 
                                
                                      };
            _INS = objSQL.ExecuteProcedure("USP_HITLIST_INSERT", _param);


        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }
        return _INS;


    }

    public int InsertLoanMaster(PLTaxi ObjPL)
    {
        try
        {
            SqlParameter[] _param ={
                                  new SqlParameter("@BID",ObjPL.BID),
                                  new SqlParameter("@LOANDT",ObjPL.LoanDt),  
                                  new SqlParameter("@AccountNo",ObjPL.AccountNo),  
                                  new SqlParameter("@DUEDT",ObjPL.DueDt), 
                                  new SqlParameter("@LAONAMT",ObjPL.LoanAmt),
                                  new SqlParameter("@EMIAMT",ObjPL.EmiAmt), 
                                  new SqlParameter("@STATUS",ObjPL.Status), 
                                
                                      };
            _INS = objSQL.ExecuteProcedure("LOANMASTER_Insert_Sp", _param);


        }
        catch (Exception Ex)
        {
            BLErrorLog.Write(Ex);
        }
        return _INS;


    }





}
