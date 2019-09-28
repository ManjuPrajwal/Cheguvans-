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

public partial class CustomerQuote : System.Web.UI.Page
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
            LoadCustoerQuote();
        }
        
    }

    public void LoadCustoerQuote()
    {
        cmbServicePlan.DataTextField = "PLANTYPE";
        cmbServicePlan.DataValueField = "PLANTYPEID";


        cmbServicePlan.DataSource = objBL.GetPlanType();
        cmbServicePlan.DataBind();
        cmbServicePlan.Items.Insert(0, "PlanType");
    }

    protected void cmbServicePlan_TextChanged(object sender, EventArgs e)
    {
        string Price;

        Price = SqlObj.ExecuteScalar("SELECT PLAN_PRICE FROM PLANTYPEMASTER WHERE PLANTYPE='" + cmbServicePlan.SelectedItem.Text + "'");
        txtPlanPrice.Text = Convert.ToString(Price);
        txtPlanPrice.Enabled = false;

    }

    public void InsCustomerQuotes()
    {
        PLobj.CustomerName = txtCustomerName.Text;
        PLobj.MobileNO = txtMobileNo.Text;
        PLobj.EmailId = txtEmailId.Text;
        PLobj.City = txtCity.Text;
        PLobj.PlanID = cmbServicePlan.SelectedItem.Value;
        PLobj.Status = "S";

        _INS = objBL.InsertCutomerQuote(PLobj);

        if (_INS > 0)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('Record Saved Successfully !');location.href='Default.aspx'", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('Record Insert Failed!');location.href='CustomerQuote.aspx'", true);
        }



    }


    protected void btnSave_Click(object sender,EventArgs e)
    {
        InsCustomerQuotes();
    }
}
