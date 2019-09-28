using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;    
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Globalization;
using CLS_BL;
using CLS_DL;

using System.Drawing;

public partial class LoanView : System.Web.UI.Page
{

    int K = 0;
    DataTable Dt = new DataTable();
    SQLDB SqlObj = new SQLDB();
    CHEBL objBL = new CHEBL();
    PLTaxi PLobj = new PLTaxi();
    DateTime Today;
    int _INS = 0;
    string LoanId;
    string MonVal, MonVal2;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            LoadList();
        }
    }

    public void LoadList()
    {
        
     
        grdLoanMaster.DataSource = objBL.GetLoanList();
        grdLoanMaster.DataBind();

    }

    
    protected void btnUpdateStatus_Click(object sender, EventArgs e)
    {

        try
        {

            string UStatus = "update LOANMASTER set STATUS='UnPaid'";
            K = SqlObj.ExecuteNonQuery(UStatus);
            LoadList();

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        { 
        }
        

        
    }

    protected void grdLoanMaster_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Paid")
        {


            GridViewRow gvr = (GridViewRow)(((Button)e.CommandSource).NamingContainer);

            int RowIndex = gvr.RowIndex;
            
            string DueDT;
            string NextDudt;

            LoanId = (grdLoanMaster.Rows[RowIndex].FindControl("lblLOANID") as Label).Text;

            string QUERY = "SELECT CONVERT(VARCHAR(10), DUEDT,105) AS DUEDT  FROM  LOANMASTER WHERE LOANID=  '" + LoanId + "'   ";

            DueDT =SqlObj.ExecuteScalar(QUERY);

            string QUERY2 = "SELECT  DATEADD(MONTH,1, DUEDT) as NXT  FROM  LOANMASTER WHERE LOANID= '" + LoanId + "'  ";

            NextDudt = SqlObj.ExecuteScalar(QUERY2);

            string QryUpdate = "UPDATE LOANMASTER  SET DUEDT='" + Convert.ToDateTime(NextDudt) + "',STATUS='Paid' WHERE LOANID=  '" + LoanId + "'  ";

            string qeruMon = "SELECT MONTH(GETDATE())  as Mon";

            string QeryMon1 = "SELECT    MONTH(DUEDT) as Mon  from LOANMASTER where LOANID= '" + LoanId + "'";


            MonVal = SqlObj.ExecuteScalar(qeruMon);
            MonVal2 = SqlObj.ExecuteScalar(QeryMon1);



            string TwodaysQuery = " SELECT  DUEDT FROM  LOANMASTER WHERE  (CASE WHEN DATEDIFF(DAY, GETDATE(), DUEDT ) >= 2 AND DATEPART(DAY, DUEDT ) >= DATEPART(DAY, GETDATE()) THEN DATEDIFF(DAY, GETDATE(), DUEDT )WHEN DATEDIFF(DAY, GETDATE(), DUEDT ) >=2 AND DATEPART(DAY, DUEDT ) < DATEPART(DAY, GETDATE()) THEN DATEDIFF(DAY, GETDATE(), DUEDT ) - 2 END) <=2 ";
            string ChkDate;
            ChkDate = SqlObj.ExecuteScalar(TwodaysQuery);


            if (MonVal == MonVal2)
            {
                K = SqlObj.ExecuteNonQuery(QryUpdate);

            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert(' Record Updated Already  !');", true);
        
            }

      
            
            LoadList();


           
            

           

          
        }

        


    }



    
}
