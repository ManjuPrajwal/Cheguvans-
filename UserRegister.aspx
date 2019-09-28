<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegister.aspx.cs" Inherits="UserRegister" Title="User Register Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="Gridstyle.css" rel="stylesheet" type="text/css" />
   <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="Javascript/Common.js"></script>
<style>

        div 
        {
            padding-bottom:15px;
        }

    </style>
<script type="text/javascript">
    function Validat() {
        if (document.getElementById("<%=txtUserName.ClientID%>").value == "") {
            alert("Enter UserName");
            document.getElementById("<%=txtUserName.ClientID%>").focus();

            return false;
        }
        if (document.getElementById("<%=txtPassword.ClientID%>").value == "") {
            alert("Enter Password");
            document.getElementById("<%=txtPassword.ClientID%>").focus();

            return false;
        }

        if (document.getElementById("<%=txtMobileNo.ClientID%>").value == "") {
            alert("Enter MobileNo");
            document.getElementById("<%=txtMobileNo.ClientID%>").focus();

            return false;
        }

        if (document.getElementById("<%=txtEmailId.ClientID%>").value == "") {
            alert("Enter EmailId");
            document.getElementById("<%=txtEmailId.ClientID%>").focus();

            return false;
        }

       


    }


   </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="Upanel" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
   
    
    <div align="center">
      <table ALIGN="center">
      <th style="font-size:18px;color:Green">User Registration </th>
      </table>
      <table>
      
        <tr>
          <td>
           Name
          </td>
          <td>
          <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
          </td>
        
        </tr>
        <tr>
         <td>
         Password
         </td>
         <td>
         <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
         </td>
                  
        </tr>
        <tr>
        <td>
        MobileNo
        </td>
        <td>
        <asp:TextBox ID="txtMobileNo" runat="server" onKeyPress="return checkNumber(event)" MaxLength="10"></asp:TextBox>
        </td>
              
        </tr>
        <tr>
         <td>
         EmailId
         </td>
         <td>
         <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
         </td>
        
        </tr>
      
        <tr>
         <td>
         
         </td>
         <td>
          <asp:Button ID="btnSubmit" runat="server" ForeColor="White" BackColor="Chocolate" 
          Text="Save" onclick="btnSubmit_Click" OnClientClick="return Validat()" />
         </td>
        
        </tr>
                  
      
      </table>
      
      <table>
      <tr>
        <td>
        <h5>You Must Register For Booking </h5> If You Have an Account <a style="color:Purple; font-size:medium" title="Click Here for User Login" href="Login.aspx">Login</a>&nbsp;&nbsp;Here
        </td>        
        
        </tr>
      </table>
     
     
    
    
    
    </div>
    
    
    
    
  
  
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

