<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerQuote.aspx.cs" Inherits="CustomerQuote" Title="CustomerQuote Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link href="Gridstyle.css" rel="stylesheet" type="text/css" />
  <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="Javascript/Common.js"></script>
<script type="text/javascript">
    function Validat() {
        if (document.getElementById("<%=txtCustomerName.ClientID%>").value == "") {
            alert("Enter Customer");
            document.getElementById("<%=txtCustomerName.ClientID%>").focus();

            return false;
        }
        if (document.getElementById("<%=txtMobileNo.ClientID%>").value == "") 
        {
            alert("Enter MobileNo");
            document.getElementById("<%=txtMobileNo.ClientID%>").focus();

            return false;
        }

        if (document.getElementById("<%=txtEmailId.ClientID%>").value == "") {
            alert("Enter EmailId");
            document.getElementById("<%=txtEmailId.ClientID%>").focus();

            return false;
        }

        if (document.getElementById("<%=txtCity.ClientID%>").value == "") {
            alert("Enter City");
            document.getElementById("<%=txtCity.ClientID%>").focus();

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
    <asp:UpdatePanel ID="Upanel" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
   
<div align="center">


   
   <div class="container-wrapper">
            <div class="container">
                <div class="row">
                    
                      
             <h3>Customer Quote</h3>
              <br /><br />            
      
                               
              <div class="form-group">
              
              <asp:TextBox ID="txtCustomerName" class="form-control"  placeholder="Customer Name" Width="230px"  runat="server"></asp:TextBox>
              </div>                      
              <div class="form-group">
              <asp:TextBox ID="txtMobileNo" MaxLength="10" onKeyPress="return checkNumber(event)" Width="230px" class="form-control"  placeholder="MobileNo" runat="server"></asp:TextBox>
              </div>                
                   
             <div class="form-group">
              
              <asp:TextBox ID="txtEmailId" class="form-control"  placeholder="EmailId" Width="230px" runat="server"></asp:TextBox>
              </div>       
                               
              <div class="form-group">
               <asp:TextBox ID="txtCity" onblur="titleCase(this)" class="form-control"  placeholder="City" Width="230px" runat="server"></asp:TextBox>
              </div>              
                               
              <div class="form-group">
              <asp:DropDownList ID="cmbServicePlan"  AutoPostBack="true" runat="server" 
               ontextchanged="cmbServicePlan_TextChanged" class="form-control"   Width="230px"></asp:DropDownList>   
              
              </div>  
              
              <div class="form-group">
               <asp:TextBox ID="txtPlanPrice" MaxLength="6" class="form-control"  placeholder="Plan Price" Width="230px" onKeyPress="return checkNumber(event)" runat="server"></asp:TextBox>
              </div>              
              

                <asp:Button ID="btnSave" runat="server" class="btn btn-primary"  Text="Save" OnClientClick="return Validat()" 
                onclick="btnSave_Click" />
                          
                               
           </div>                    
         </div>
                                
      
 </div>
      
</div>
</ContentTemplate>
</asp:UpdatePanel>

</asp:Content>

