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

public partial class CustomerQuoteView : System.Web.UI.Page
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
            LoadQuotes();
        }


    }

    public void LoadQuotes()
    {
        grdCustomerQuoteView.DataSource = objBL.GetQuotes();
        grdCustomerQuoteView.DataBind();
            
    }




}
