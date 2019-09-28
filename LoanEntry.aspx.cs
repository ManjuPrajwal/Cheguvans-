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
public partial class LoanEntry : System.Web.UI.Page
{

    int K = 0;
    DataTable Dt = new DataTable();
    SQLDB SqlObj = new SQLDB();
    CHEBL objBL = new CHEBL();
    PLTaxi PLobj = new PLTaxi();
    DateTime Today;
    int _INS = 0;
    string Username = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            LoadBankMaster();
        }

    }

    public void LoadBankMaster()
    {
        CmbBankName.DataTextField = "BANKNAME";
        CmbBankName.DataValueField = "BID";


        CmbBankName.DataSource = objBL.GetBankMaster();
        CmbBankName.DataBind();
        CmbBankName.Items.Insert(0, "BankName");
    }

    protected void CmbBankName_TextChanged(object sender, EventArgs e)
    {
        string Price;

        Price = SqlObj.ExecuteScalar("SELECT BRANCH FROM BANKMASTER WHERE BANKNAME='" + CmbBankName.SelectedItem.Text + "'");
        txtBranchName.Text = Convert.ToString(Price);
      

    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        InsertLoanMaster();
    }

    public void InsertLoanMaster()
    {
       System.Globalization.DateTimeFormatInfo dateInfo = new System.Globalization.DateTimeFormatInfo();
       dateInfo.ShortDatePattern = "dd/MM/yyyy";
        PLobj.BID = Convert.ToInt32(CmbBankName.SelectedValue);
        PLobj.LoanDt = Convert.ToDateTime(txtLoanDt.Text, dateInfo);
        PLobj.AccountNo = Convert.ToInt64(txtAccountNo.Text);
        PLobj.DueDt = Convert.ToDateTime(txtEMTDt.Text, dateInfo);
        PLobj.LoanAmt = Convert.ToDecimal(txtLoanTotAmt.Text);
        PLobj.EmiAmt = Convert.ToDecimal(txtEMIAmt.Text);
        PLobj.Status = "UnPaid";
        K = objBL.InsertLoanMaster(PLobj);

        if (K > 0)
        {
          ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert(' Loan Record Saved Successful !');location.href='LoanEntry.aspx'", true);
        
        }
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert(' Loan Record Inserted Failed !');location.href='LoanEntry.aspx'", true);
        
        }
    }


}
