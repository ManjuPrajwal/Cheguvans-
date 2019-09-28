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

public partial class BankMaster : System.Web.UI.Page
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

    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        InsBankMaster();
    }


    public void InsBankMaster()
    {
        PLobj.BankName = txtBankName.Text;
        PLobj.BranchName = txtBranch.Text;


        _INS = objBL.InsertBankMaster(PLobj);

        if (_INS > 0)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('Record Saved Successfully !');location.href='BankMaster.aspx'", true);
            txtBankName.Text = "";
            txtBranch.Text = "";
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('Record Insert Failed!');location.href='BankMaster.aspx'", true);
        }



    }
}
