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


public partial class PlanTypeView : System.Web.UI.Page
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
            LoadPlanTypeMaster();
        }


    }


    protected void grdPlanType_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

        grdPlanType.EditIndex = -1;
        LoadPlanTypeMaster();

    }

    protected void grdPlanType_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void grdPlanType_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        GridViewRow grvRow = (GridViewRow)grdPlanType.Rows[e.RowIndex];
        Label lblDeleteId = (Label)grvRow.FindControl("lblPlanTypeId");
        string Query = "delete from PLANTYPEMASTER  where PLANTYPEID='" + lblDeleteId.Text + "'";
        SqlObj.ExecuteNonQuery(Query);
        LoadPlanTypeMaster();

        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('PlanType Deleted!');location.href='PlanTypeView.aspx'", true);

    }
    protected void grdPlanType_RowEditing(object sender, GridViewEditEventArgs e)
    {

        grdPlanType.EditIndex = e.NewEditIndex;
        LoadPlanTypeMaster();
    }
    protected void grdPlanType_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        GridViewRow grvRow = (GridViewRow)grdPlanType.Rows[e.RowIndex];
        Label lbl = (Label)grvRow.FindControl("lblPlanTypeId");
        TextBox TxtPlanTypeU = (TextBox)grvRow.FindControl("txtPlanType");
        TextBox TxtPlanPriceU = (TextBox)grvRow.FindControl("txtPlanPrice");
        grdPlanType.EditIndex = -1;
        string Query = "Update PLANTYPEMASTER set PLANTYPE=UPPER('" + TxtPlanTypeU.Text + "'),PLAN_PRICE='" +Convert.ToDecimal(TxtPlanPriceU.Text) + "' WHERE PLANTYPEID='" + lbl.Text + "' ";
        SqlObj.ExecuteNonQuery(Query);
        LoadPlanTypeMaster();
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('PlanType Updated!');location.href='PlanTypeView.aspx'", true);

    }



    public void LoadPlanTypeMaster()
    {
        string Query = "select * from PLANTYPEMASTER ORDER BY PLANTYPE ASC ";
        Dt = SqlObj.GetData_DT(Query);
        grdPlanType.DataSource = Dt;
        grdPlanType.DataBind();

    }

}
