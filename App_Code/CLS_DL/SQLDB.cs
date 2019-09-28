using System;
using System.Collections.Generic;

using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using CLS_BL;


namespace CLS_DL
{
    public class SQLDB
    {
        SqlConnection objCon = new SqlConnection();
        SqlCommand objCmd = new SqlCommand();
        SqlDataAdapter objDA = new SqlDataAdapter();
        DataSet objDS = new DataSet();
        DataTable objDT = new DataTable();
        SqlDataReader _objReader;
        public string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString.ToString();

        #region OpenConnection
        public SqlConnection OpenConnection()
        {
            objCon = new SqlConnection(strCon);
            objCon.Open();
            return objCon;
        }
        #endregion
        #region CloseConnection
        public int CloseConnection()
        {
           
            objCon.Close();
            return 1;
        }
        #endregion
        #region ExecuteNonQuery
        public int ExecuteNonQuery(string sqlQuery)
        {
            int count=0;
            objCmd = new SqlCommand(sqlQuery, OpenConnection());
            try
            {
                count = Convert.ToInt16(objCmd.ExecuteNonQuery());
            }
            catch (Exception ex)
            {

                CLS_ErrorLog objLog = new CLS_ErrorLog();
                objLog.Write(ex);
            }
            finally
            {
                CloseConnection();
                objCmd.Dispose();
            }
            return count;
        }
        #endregion
        #region ExecuteDateTable
        public DataTable GetData_DT(string sqlQuery)
        {
            objDT = new DataTable();
            objDA = new SqlDataAdapter(sqlQuery, OpenConnection());
            try
            {
                objDA.Fill(objDT);
            }
            catch (Exception ex)
            {
                CLS_ErrorLog objLog = new CLS_ErrorLog();
                objLog.Write(ex);
            }
            finally
            {
                CloseConnection();
                objDA.Dispose();
            }
            return objDT;
            
        }
        #endregion
        #region ExecuteDateSet
        public DataSet GetData_DS(string sqlQuery)
        {
            objDS = new DataSet();
            objDA = new SqlDataAdapter(sqlQuery, OpenConnection());
            try
            {
                objDA.Fill(objDS);
            }
            catch (Exception ex)
            {
                CLS_ErrorLog objLog = new CLS_ErrorLog();
                objLog.Write(ex);
            }
            finally
            {
                CloseConnection();
                objDA.Dispose();
            }
            return objDS;

        }
        #endregion
        #region ExecuteProcedure
        public int ExecuteProcedure(string spName, SqlParameter[] param)
        {
            int count = 0;
            objCmd = new SqlCommand(spName, OpenConnection());
            objCmd.CommandType = CommandType.StoredProcedure;
            foreach (SqlParameter para in param)
            {
                objCmd.Parameters.Add(para);
            }
            try
            {
                count = objCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                CLS_ErrorLog objLog = new CLS_ErrorLog();
                objLog.Write(ex);
            }
            finally
            {
                CloseConnection();
                objCmd.Dispose();
            }
            return count;
        }
        #endregion
        #region ExecuteReader
        public SqlDataReader ExecuteReader(string sqlQuery)
        {
            SqlCommand objCmd = new SqlCommand();
            string strData = string.Empty;
            try
            {
                objCmd = new SqlCommand(sqlQuery, OpenConnection());
                objCmd.CommandTimeout = 0;
            }
            catch (Exception ex)
            {
                CLS_ErrorLog objLog = new CLS_ErrorLog();
                objLog.Write(ex);
            }
            return objCmd.ExecuteReader(CommandBehavior.CloseConnection);
        }
        #endregion
        #region ExecuteScalar
        public string ExecuteScalar(string sqlQuery)
        {
            string strData = string.Empty;
            SqlCommand objCmd = new SqlCommand();
            try
            {
                objCmd = new SqlCommand(sqlQuery, OpenConnection());
                objCmd.CommandTimeout = 0;
                strData = Convert.ToString(objCmd.ExecuteScalar());
            }
            catch (Exception ex)
            {
                CLS_ErrorLog objLog = new CLS_ErrorLog();
                objLog.Write(ex);
            }
            finally
            {
                objCmd.Dispose();
                CloseConnection();
            }
            return strData;
        }
        #endregion
    }
}