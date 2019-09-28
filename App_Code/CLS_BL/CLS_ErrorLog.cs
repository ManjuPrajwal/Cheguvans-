using System;
using System.Web;
using System.Web.UI.WebControls.WebParts;

namespace CLS_BL
{
    public class CLS_ErrorLog
    {
        public const string cstFileName = "ErrorLog";
        public static System.IO.TextWriter objTxtWriter;
        public static string sDirectory = HttpContext.Current.Server.MapPath("~\\Error_Logs\\");
        public static System.IO.FileStream objFStream;
        public static bool OpenFile()
        {
            string sFileName = cstFileName + DateTime.Now.ToString("dd-MM-yyyy") + ".txt";
            string sFilePath = HttpContext.Current.Server.MapPath("~\\Error_Logs\\" + sFileName.ToString());
            try
            {
                if (System.IO.File.Exists(sFilePath))
                {
                   objTxtWriter = new System.IO.StreamWriter(sDirectory + sFileName, true);
                }
                else
                {
                    objFStream = System.IO.File.Create(sFilePath);
                    objTxtWriter = new System.IO.StreamWriter(objFStream);
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
    
        public void Write(Exception oInnerException)
        {
            string sMessage = oInnerException.StackTrace;
            try
            {
                if (OpenFile())
                {
                    objTxtWriter.WriteLine(sMessage);
                    objTxtWriter.WriteLine(" Error Message is : " + oInnerException.Message.ToString());
                    objTxtWriter.WriteLine(" Created Time : " + DateTime.Now);
                }
                CloseFile();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
       public static void CloseFile()
       {
         objTxtWriter.Close();
       }
  }



 #region notuse

    /*   public void Write(string sErrorID, string sMessage)
       {
           string sLine = "-------------------------------------------------------------------------------------";
           try
           {
               if (OpenFile())
               {
                   objTxtWriter.WriteLine("Logged User is <span style=\"color: #c00000;\">: " + sMessage + "</span>");
                   objTxtWriter.WriteLine(sLine);
               }
               CloseFile();
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }*/
    /*     public void Write(Exception oInnerException, string userid)
         {
             string sLine = "-------------------------------------------------------------------------------------";
             string sMessage = oInnerException.StackTrace;
             try
             {
                 if (OpenFile())
                 {
                     objTxtWriter.WriteLine("Logged User is : <span style=\"color: #c00000;\">" + userid +"</span>" );
                     objTxtWriter.WriteLine(sMessage);
                     objTxtWriter.WriteLine(" Error Message is : " + oInnerException.Message.ToString());
                     objTxtWriter.WriteLine(" Created Time : " + DateTime.Now);
                     objTxtWriter.WriteLine(sLine);
                     objTxtWriter.WriteLine(sLine);
                 }
                 CloseFile();
             }
             catch (Exception ex)
             {
                 throw ex;
             }
         }*/
    /*    public void Write(Exception oInnerException)
        {
            string sMessage = oInnerException.StackTrace;
            try
            {
                if (OpenFile())
                {
                    objTxtWriter.WriteLine(sMessage);
                    objTxtWriter.WriteLine(" Error Message is : " + oInnerException.Message.ToString());
                    objTxtWriter.WriteLine(" Created Time : " + DateTime.Now);
                }
                CloseFile();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }*/
    #endregion
}