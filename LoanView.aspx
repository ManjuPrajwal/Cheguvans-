<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="LoanView.aspx.cs" Inherits="LoanView" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="Gridstyle.css" rel="stylesheet" type="text/css" />
     <link href="css/StyleSheet.css" rel="stylesheet" type="text/css"   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
<asp:UpdatePanel ID="Upanel" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    <div align="center">
      
     <asp:Button ID="btnUpdateStatus" runat="server" Text="Update Status"  onclick="btnUpdateStatus_Click" ForeColor="White" BackColor="Blue" /> 
    
    </div>
    
    <div align="center">

                    <h3>Loan  View</h3>          
                  <div  style="overflow:scroll; height:370px; width:1000px; background-color:White">
                   <asp:GridView ID="grdLoanMaster" runat="server" AllowPaging="true" Font-Size="Medium"
                       AutoGenerateColumns="False" PageSize="50000" CssClass="Grid" PagerStyle-CssClass="pgr"
                        AlternatingRowStyle-CssClass="alt" EmptyDataText="No Such Data Found" 
                           DataKeyNames="LOANID" AllowSorting="True" onrowcommand="grdLoanMaster_RowCommand">
                                        
                        <Columns>
                             <asp:TemplateField HeaderText="SNo">
                                  <ItemTemplate>
                                      <%#Container.DataItemIndex+1 %>
                                  </ItemTemplate>
                              </asp:TemplateField>

                        
                        <asp:TemplateField HeaderText="LOANID" Visible="false">
                          <ItemTemplate>
                          <asp:Label id="lblLOANID" runat="server" Text='<%#Eval("LOANID")%>'></asp:Label>
                          </ItemTemplate>
                          </asp:TemplateField>
                     
                          <asp:TemplateField HeaderText="BANKNAME">
                          <ItemTemplate>
                          <asp:Label id="lblBANKNAME" runat="server" Text='<%#Eval("BANKNAME")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtBANKNAME" runat="server" Text='<%#Eval("BANKNAME")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                          
                          
                          <asp:TemplateField HeaderText="BRANCH" HeaderStyle-Width="35%">
                          <ItemTemplate>
                          <asp:Label id="lblBRANCH" runat="server" Text='<%#Eval("BRANCH")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtBRANCH" runat="server" Text='<%#Eval("BRANCH")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                        
                          <asp:TemplateField HeaderText="LOAN DATE">
                          <ItemTemplate>
                          <asp:Label id="lblLOANDATE" runat="server" Text='<%#Eval("LOANDT","{0:dd/MM/yyyy}")%>'></asp:Label>
                          </ItemTemplate>
                         
                          </asp:TemplateField>
                          
                          <asp:TemplateField HeaderText="DUE DATE" ItemStyle-Font-Bold="true">
                          <ItemTemplate>
                          <asp:Label id="lblDUEDATE" runat="server" Text='<%#Eval("DUEDT","{0:dd/MM/yyyy}")%>'></asp:Label>
                          </ItemTemplate>  
                          </asp:TemplateField>
                        
                          <asp:TemplateField HeaderText="LOAN AMT" HeaderStyle-Width="20%">
                          <ItemTemplate>
                          <asp:Label id="lblLoanAmt" runat="server" Text='<%#Eval("LAONAMT")%>'></asp:Label>
                          </ItemTemplate>                        
                          </asp:TemplateField>
                           <asp:TemplateField HeaderText="ACCOUNT NO" HeaderStyle-Width="25%">
                          <ItemTemplate>
                          <asp:Label id="lblAccountNo" runat="server" Text='<%#Eval("AccountNo")%>'></asp:Label>
                          </ItemTemplate>                        
                          </asp:TemplateField>
                          
                        
                          <asp:TemplateField HeaderText="EMI AMT" HeaderStyle-Width="20%">
                          <ItemTemplate>
                          <asp:Label id="lblEMIAmt" runat="server" Text='<%#Eval("EMIAMT")%>'></asp:Label>
                          </ItemTemplate>                        
                          </asp:TemplateField>
                           <asp:TemplateField HeaderText="Status">
                          <ItemTemplate>
                          <asp:Label id="lblStatus" runat="server" Text='<%#Eval("STATUS")%>'></asp:Label>
                          </ItemTemplate>                        
                          </asp:TemplateField>
                          
                          <asp:TemplateField HeaderText="Status">
                          <ItemTemplate>
                          <asp:Button ID="btnViewmore" 
                           CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Paid" runat="server" BackColor="Blue" ForeColor="White" Text="Paid" />
                          </ItemTemplate>
                          </asp:TemplateField> 
                                        
                        </Columns>
                                     
                        <PagerStyle CssClass="pgr" />
                        <AlternatingRowStyle CssClass="alt" />
                   
                  </asp:GridView>
                  </div>
                            
                      
                   
   </div>
   
      <BR />  <BR />
     </ContentTemplate>
     </asp:UpdatePanel>
</asp:Content>

