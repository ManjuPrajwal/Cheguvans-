<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="LoanEntry.aspx.cs" Inherits="LoanEntry" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


<script type="text/javascript">
    function Validat() {
        if (document.getElementById("<%=txtLoanDt.ClientID%>").value == "") {
            alert("Enter LoanDate");
            document.getElementById("<%=txtLoanDt.ClientID%>").focus();

            return false;
        }
        if (document.getElementById("<%=txtAccountNo.ClientID%>").value == "") {
            alert("Enter AccountNo");
            document.getElementById("<%=txtAccountNo.ClientID%>").focus();

            return false;
        }

        
        if (document.getElementById("<%=txtEMTDt.ClientID%>").value == "") 
        {
            alert("Enter EMI Date ");
            document.getElementById("<%=txtEMTDt.ClientID%>").focus();

            return false;
        }

        if (document.getElementById("<%=txtLoanTotAmt.ClientID%>").value == "") {
            alert("Enter Total Loan Amount ");
            document.getElementById("<%=txtLoanTotAmt.ClientID%>").focus();

            return false;
        }


        if (document.getElementById("<%=txtEMIAmt.ClientID%>").value == "") {
            alert("Enter EMI Amount ");
            document.getElementById("<%=txtEMIAmt.ClientID%>").focus();

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
<head id="Head1" runat="server" />.
<asp:UpdatePanel ID="Upanel" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
 <div align="center">
 <asp:ImageButton ID="ImageButton1"  PostBackUrl="~/PlanTypeView.aspx"  runat="server" ImageUrl="~/Images/view-icon.png" Width="30" Height="30"  ToolTip="PlanType View"/>
 </div>
 <br />
 <div align="center">
 
   <div class="container-wrapper">
            <div class="container">
                <div class="row">
                    
                      
             <h3>Customer Quote</h3>
              <br />           
      
                               
              <div class="form-group">
              
              <asp:DropDownList ID="CmbBankName"  AutoPostBack="true" runat="server" 
                class="form-control"  ontextchanged="CmbBankName_TextChanged"  Width="230px"></asp:DropDownList>   
              
              </div>      
              
               <div class="form-group">
               <asp:TextBox ID="txtBranchName" onKeyPress="return checkNumber(event)" class="form-control"  placeholder="BranchName" Width="230px" runat="server"></asp:TextBox>
              </div>   
              <div class="form-group">
               <asp:TextBox ID="txtLoanDt" Width="230px" class="form-control"  placeholder="Loan Date" runat="server"></asp:TextBox>                       
               <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd-MM-yyyy" TargetControlID="txtLoanDt"
               PopupButtonID="txtLoanDt">
               </asp:CalendarExtender>
              </div> 
              
               <div class="form-group">
               <asp:TextBox ID="txtAccountNo"  onKeyPress="return checkNumber(event)" class="form-control"  placeholder="AccountNo" Width="230px" runat="server"></asp:TextBox>
              </div>       
                <div class="form-group">
                <asp:TextBox ID="txtEMTDt" Width="230px" class="form-control"  placeholder="EMI Date" runat="server"></asp:TextBox>                       
               <asp:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MM-yyyy" TargetControlID="txtEMTDt"
               PopupButtonID="txtEMTDt">
               </asp:CalendarExtender>
             </div>
                    
                
              <div class="form-group">
              <asp:TextBox ID="txtLoanTotAmt" MaxLength="10" onKeyPress="return checkNumber(event)" Width="230px" class="form-control"  placeholder="Loan ToT Amt" runat="server"></asp:TextBox>
              </div>       
                
              <div class="form-group">
              <asp:TextBox ID="txtEMIAmt" MaxLength="10" onKeyPress="return checkNumber(event)" Width="230px" class="form-control"  placeholder="EMI Amt" runat="server"></asp:TextBox>
              </div> 
                
                    
              

                <asp:Button ID="btnSave" runat="server" class="btn btn-primary"  Text="Save" OnClientClick="return Validat()" 
                onclick="btnSave_Click" />
                          
                               
           </div>                    
         </div>
                                
      
 </div>
      
</div>
   

</ContentTemplate>
</asp:UpdatePanel>
<bR />




</asp:Content>

