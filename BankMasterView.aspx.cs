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

public partial class BankMasterView : System.Web.UI.Page
{

    int K = 0;
    DataTable Dt = new DataTable();
    SQLDB SqlObj = new SQLDB();
    CHEBL objBL = new CHEBL();
    PLTaxi PLobj = new PLTaxi();
    DateTime Today;
    int _INS = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadbBankMaster();
        }

    }


    protected void grdBankMaster_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void grdBankMaster_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        GridViewRow grvRow = (GridViewRow)grdBankMaster.Rows[e.RowIndex];
        Label lblDeleteId = (Label)grvRow.FindControl("lblBID");
        string Query = "delete from BANKMASTER  where BID='" + lblDeleteId.Text + "'";
        SqlObj.ExecuteNonQuery(Query);
        LoadbBankMaster();

        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('BankName Deleted!');location.href='BankMasterView.aspx'", true);

    }
    protected void grdBankMaster_RowEditing(object sender, GridViewEditEventArgs e)
    {

        grdBankMaster.EditIndex = e.NewEditIndex;
        LoadbBankMaster();
    }

    protected void grdBankMaster_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

        grdBankMaster.EditIndex = -1;
        LoadbBankMaster();

    }
    protected void grdBankMaster_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        GridViewRow grvRow = (GridViewRow)grdBankMaster.Rows[e.RowIndex];
        Label lbl = (Label)grvRow.FindControl("lblBID");
        TextBox TxtBankNameU = (TextBox)grvRow.FindControl("txtBANKNAME");
        TextBox TxtBranchU = (TextBox)grvRow.FindControl("txtBRANCH");
        grdBankMaster.EditIndex = -1;
        string Query = "Update BANKMASTER SET BANKNAME=UPPER('" + TxtBankNameU.Text + "'),BRANCH=UPPER('" +TxtBranchU.Text + "') WHERE BID='" + lbl.Text + "' ";
        SqlObj.ExecuteNonQuery(Query);
        LoadbBankMaster();
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('Bank Details  Updated!');location.href='BankMasterView.aspx'", true);

    }



    public void LoadbBankMaster()
    {
        string Query = "select * from BANKMASTER ORDER BY BANKNAME ASC ";
        Dt = SqlObj.GetData_DT(Query);
        grdBankMaster.DataSource = Dt;
        grdBankMaster.DataBind();

    }

}
