using System;
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
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using CLS_BL;
using CLS_DL;

public partial class _Default : System.Web.UI.Page 
{
    DataTable Dt = new DataTable();
    SQLDB SqlObj = new SQLDB();
    CHEBL objBL = new CHEBL();
    PLTaxi PLobj = new PLTaxi();
    int K = 0;
    string HitDate, HitTime;
    System.Globalization.DateTimeFormatInfo dateInfo = new System.Globalization.DateTimeFormatInfo();
    protected void Page_Load(object sender, EventArgs e)
    {



        if (!IsPostBack)
        {
            HitDate = DateTime.Now.ToString("dd/MM/yyyy");
            HitTime = DateTime.Now.ToString("HH:mm");
            string ipaddress;
            ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (ipaddress == "" || ipaddress == null)
                ipaddress = Request.ServerVariables["REMOTE_ADDR"];
            //Response.Write("IP Address : " + ipaddress);
            string ip = Server.HtmlEncode(Request.UserHostAddress);
            //Response.Write("IP Address : " + ip);
            dateInfo.ShortDatePattern = "dd/MM/yyyy";
            PLobj.IPAddr = ip;
            PLobj.HitTime = HitTime;
            PLobj.HitDate = Convert.ToDateTime(HitDate, dateInfo);
          //  K = objBL.InsertHitList(PLobj);
        
        }

        


        
        

    }
    
}
