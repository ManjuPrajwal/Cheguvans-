<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="BankMaster.aspx.cs" Inherits="BankMaster" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="Gridstyle.css" rel="stylesheet" type="text/css" />
  <link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="Javascript/Common.js"></script>
<script type="text/javascript">
    function Validat() {
        if (document.getElementById("<%=txtBankName.ClientID%>").value == "") {
            alert("Enter BankName");
            document.getElementById("<%=txtBankName.ClientID%>").focus();

            return false;
        }
        if (document.getElementById("<%=txtBranch.ClientID%>").value == "") 
        {
            alert("Enter Branch Name ");
            document.getElementById("<%=txtBranch.ClientID%>").focus();

            return false;
        }

       



    }

    function titleCase(element) {
        var txt = element.value;
        var spl = txt.split(" ");
        var upstring = "";
        for (var i = 0; i < spl.length; i++) {
            try { //onkeypress will cause an error on first keypress
                upstring += spl[i][0].toUpperCase();

            } catch (err) { }
            upstring += spl[i].substring(1, spl[i].length);
            upstring += " ";

        }
        element.value = upstring.substring(0, upstring.length - 1);
    }


   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div align="center">
 <asp:ImageButton ID="ImageButton1"  PostBackUrl="~/BankMasterView.aspx"  runat="server" ImageUrl="~/Images/view-icon.png" Width="30" Height="30"  ToolTip="BANKLIST View"/>
 </div>
 <BR />
<div align="center">
<div class="container-wrapper">
            <div class="container">
                <div class="row">
                    
                      
             <h3>Bank Master </h3>
              <br /><br />            
      
                               
              <div class="form-group">
              
              <asp:TextBox ID="txtBankName" class="form-control"  placeholder="Bank Name" Width="230px"  runat="server"></asp:TextBox>
              </div>                      
             
              <div class="form-group">
               <asp:TextBox ID="txtBranch"  class="form-control"  placeholder="Branch Name" Width="230px" runat="server"></asp:TextBox>
              </div>              
              

                <asp:Button ID="btnSave" runat="server" class="btn btn-primary"  Text="Save" OnClientClick="return Validat()" 
                onclick="btnSave_Click" />
                          
                               
           </div>                    
         </div>
                                
      
 </div>

</div>

<br />








</asp:Content>

