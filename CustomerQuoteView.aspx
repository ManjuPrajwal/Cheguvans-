<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="CustomerQuoteView.aspx.cs" Inherits="CustomerQuoteView" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="Gridstyle.css" rel="stylesheet" type="text/css" />
 <link href="style.css" rel="Stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <asp:UpdatePanel ID="Upanel" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    <div align="center">
                
                            
                            
                   <div  style="overflow:scroll; height:370px; width:800px; background-color:White">
                   <asp:GridView ID="grdCustomerQuoteView" runat="server" AllowPaging="true" Font-Size="Small"
                       AutoGenerateColumns="False" PageSize="50000" CssClass="Grid" PagerStyle-CssClass="pgr"
                        AlternatingRowStyle-CssClass="alt" EmptyDataText="No Such Data Found" 
                           DataKeyNames="QUOTEID" AllowSorting="True">
                          
                          
                                           
                        <Columns>
                             <asp:TemplateField HeaderText="SNo">
                                  <ItemTemplate>
                                      <%#Container.DataItemIndex+1 %>
                                  </ItemTemplate>
                              </asp:TemplateField>

                        
                        <asp:TemplateField HeaderText="QUOTEID" Visible="false">
                          <ItemTemplate>
                          <asp:Label id="lblQUOTEID" runat="server" Text='<%#Eval("QUOTEID")%>'></asp:Label>
                          </ItemTemplate>
                          </asp:TemplateField>
                     
                          <asp:TemplateField HeaderText="CustomerName">
                          <ItemTemplate>
                          <asp:Label id="lblCustomerName" runat="server" Text='<%#Eval("CUSTOMERNAME")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtCustomerName" runat="server" Text='<%#Eval("CUSTOMERNAME")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                          
                          
                          <asp:TemplateField HeaderText="MobileNo">
                          <ItemTemplate>
                          <asp:Label id="lblMOBILENO" runat="server" Text='<%#Eval("MOBILENO")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtMOBILENO" runat="server" Text='<%#Eval("MOBILENO")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                          
                           <asp:TemplateField HeaderText="Emaild">
                          <ItemTemplate>
                          <asp:Label id="lblEmaild" runat="server" Text='<%#Eval("EMAILID")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtEmaild" runat="server" Text='<%#Eval("EMAILID")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                          
                          <asp:TemplateField HeaderText="City">
                          <ItemTemplate>
                          <asp:Label id="lblCity" runat="server" Text='<%#Eval("CITY")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtCity" runat="server" Text='<%#Eval("CITY")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                         <asp:TemplateField HeaderText="QuoteDt">
                          <ItemTemplate>
                          <asp:Label id="lblQuoteDt" runat="server" Text='<%#Eval("ORDERDATE","{0:dd/MM/yyyy}")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtQuoteDt" runat="server" Text='<%#Eval("ORDERDATE")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                          
                          <asp:TemplateField HeaderText="PlanType">
                          <ItemTemplate>
                          <asp:Label id="lblPlanType" runat="server" Text='<%#Eval("PLANTYPE")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtPlanType" runat="server" Text='<%#Eval("PLANTYPE")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                          
                          <asp:TemplateField HeaderText="PlanPrice">
                          <ItemTemplate>
                          <asp:Label id="lblPlanPrice" runat="server" Text='<%#Eval("PLAN_PRICE")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtPlanPrice" runat="server" Text='<%#Eval("PLAN_PRICE")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                          
                     <%-- <asp:TemplateField HeaderText="Remove" ItemStyle-Width="30px">
                            <ItemTemplate>
                            <asp:ImageButton id="btnItemRemove"   ImageUrl="~/images/Alarm-Error-icon.png" width="20px" runat="server" CommandArgument='<%#Eval("VENDORID") %>' CommandName="REMOVE"></asp:ImageButton>
                            </ItemTemplate>
                            <ItemStyle Width="30px" />
                           </asp:TemplateField>--%> 
                        </Columns>
                                     
                        <PagerStyle CssClass="pgr" />
                        <AlternatingRowStyle CssClass="alt" />
                   
                  </asp:GridView>
                  </div>
                            
                  
      </div>
     </ContentTemplate>
     </asp:UpdatePanel>
</asp:Content>

