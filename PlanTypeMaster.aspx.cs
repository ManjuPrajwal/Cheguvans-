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

public partial class PlanTypeMaster : System.Web.UI.Page
{
    int K = 0;
    DataTable Dt = new DataTable();
    SQLDB SqlObj = new SQLDB();
    CHEBL ObjBL = new CHEBL();
    PLTaxi PLobj = new PLTaxi();
    DateTime Today;
    int _INS = 0;
    string Username = string.Empty;


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        PLobj.PlanType = txtPlanType.Text;
        PLobj.Plan_Price =Convert.ToDecimal(txtPlanPrice.Text);
        ObjBL.InsertPlanTypeMaster(PLobj);
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('PlanType Added!');location.href='PlanTypeMaster.aspx'", true);          
    }

}
