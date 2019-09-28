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

public partial class UserRegister : System.Web.UI.Page
{
    int K = 0;
    DataTable Dt = new DataTable();
    SQLDB SqlObj = new SQLDB();
    CHEBL objBL = new CHEBL();
    PLTaxi PLobj = new PLTaxi();
    DateTime Today;
    int _INS = 0;
    string Username = string.Empty;
    static string UppercaseFirst(string s)
    {
        if (string.IsNullOrEmpty(s))
        {
            return string.Empty;
        }
        char[] a = s.ToCharArray();
        a[0] = char.ToUpper(a[0]);
        return new string(a);
    }
    string Password;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void SaveEndUserMaster()
    {
        System.Globalization.DateTimeFormatInfo dateInfo = new DateTimeFormatInfo();
        dateInfo.ShortDatePattern = "dd-MM-yyyy";
        Today = Convert.ToDateTime(DateTime.Now.ToString("dd-MM-yyyy"), dateInfo);
  
        string strPassword = base64Encode(txtPassword.Text);
        //string username = Session["UserName"].ToString();
        string s = txtUserName.Text;
        s = s.ToLower();
        string name = UppercaseFirst(s);
        PLobj.strUserName = name;
        PLobj.strPassword = strPassword;
        PLobj.MobileNO = txtMobileNo.Text;
        PLobj.EmailId = txtEmailId.Text;
        
        PLobj.CreatedDate = Today;

        _INS = objBL.InsertEndUserMaster(PLobj);

        if (_INS > 0)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('Record Saved Successfully !');location.href='Login.aspx'", true);
            txtUserName.Text = "";
            txtPassword.Text = "";
           
            txtEmailId.Text = "";
            txtMobileNo.Text = "";
            
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('Failed !')", true);        
        }



    
    
    }



    private string base64Encode(string sData)
    {
        try
        {
            byte[] encData_byte = new byte[sData.Length];

            encData_byte = System.Text.Encoding.UTF8.GetBytes(sData);

            string encodedData = Convert.ToBase64String(encData_byte);

            return encodedData;

        }
        catch (Exception ex)
        {
            throw new Exception("Error in base64Encode" + ex.Message);
        }
    }



    public string base64Decode(string sData)
    {

        System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();

        System.Text.Decoder utf8Decode = encoder.GetDecoder();

        byte[] todecode_byte = Convert.FromBase64String(sData);

        int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);

        char[] decoded_char = new char[charCount];

        utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);

        string result = new String(decoded_char);

        return result;

    }





    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SaveEndUserMaster();
    }
}
