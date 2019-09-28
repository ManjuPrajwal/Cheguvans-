<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="PlanTypeMaster.aspx.cs" Inherits="PlanTypeMaster" Title="PlanType Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="Javascript/Common.js"></script>
 <script type="text/javascript">
       function Validat()
       {
           if (document.getElementById("<%=txtPlanType.ClientID%>").value == "")
           {
               alert("Enter PlanType");
               document.getElementById("<%=txtPlanType.ClientID%>").focus();

               return false;
           }
           if (document.getElementById("<%=txtPlanPrice.ClientID%>").value == "") {
               alert("Enter PlanPrice");
               document.getElementById("<%=txtPlanPrice.ClientID%>").focus();

               return false;
           }
          
           
          
       }

   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:UpdatePanel ID="Upanel" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
 <div align="center">
 <asp:ImageButton ID="ImageButton1"  PostBackUrl="~/PlanTypeView.aspx"  runat="server" ImageUrl="~/Images/view-icon.png" Width="30" Height="30"  ToolTip="PlanType View"/>
 </div>
 <br /><br /><br /><br /> <br />
 <div align="center">
   <div class="container-wrapper">
            <div class="container">
                <div class="row">
                    
                      
             <h3>PlanType  Master</h3>
             <br />           
      
                               
              <div class="form-group">
              
              
              <asp:TextBox ID="txtPlanType" class="form-control"  placeholder="Plan Type" Width="180px" runat="server"></asp:TextBox>
              </div>                      
              <div class="form-group">
              
              <asp:TextBox ID="txtPlanPrice" onKeyPress="return checkNumber(event)" MaxLength="10" Width="180px" class="form-control"  placeholder="Plan Price"  runat="server"></asp:TextBox>
              </div>                
                       
              
                <div>
                <asp:Button ID="Button1" runat="server" class="btn btn-primary"  Text="Save" OnClientClick="return Validat()" 
                onclick="btnSave_Click" />
                </div>                     
                              
                               
                         
         </div>
                                
     
   </div>
   
   
 </div>
   </div>
   

</ContentTemplate>
</asp:UpdatePanel>
<bR />
</asp:Content>

