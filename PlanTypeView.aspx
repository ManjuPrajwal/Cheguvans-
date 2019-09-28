﻿<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="PlanTypeView.aspx.cs" Inherits="PlanTypeView" Title="PlanType Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link href="Gridstyle.css" rel="stylesheet" type="text/css" />
     <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:UpdatePanel ID="Upanel" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    <div align="center">

                  <h3>PlanType View</h3>          
                  <div  style="overflow:scroll; height:370px; width:500px; background-color:White">
                   <asp:GridView ID="grdPlanType" runat="server" AllowPaging="true" Font-Size="Small"
                       AutoGenerateColumns="False" PageSize="50000" CssClass="Grid" PagerStyle-CssClass="pgr"
                        AlternatingRowStyle-CssClass="alt" EmptyDataText="No Such Data Found" 
                           DataKeyNames="PLANTYPEID" AllowSorting="True" AutoGenerateDeleteButton="True" 
                           AutoGenerateEditButton="True" 
                           onrowcancelingedit="grdPlanType_RowCancelingEdit" 
                           onrowdatabound="grdPlanType_RowDataBound" 
                           onrowdeleting="grdPlanType_RowDeleting" 
                           onrowediting="grdPlanType_RowEditing" 
                           onrowupdating="grdPlanType_RowUpdating">
                                           
                        <Columns>
                             <asp:TemplateField HeaderText="SNo">
                                  <ItemTemplate>
                                      <%#Container.DataItemIndex+1 %>
                                  </ItemTemplate>
                              </asp:TemplateField>

                        
                        <asp:TemplateField HeaderText="PlanType" Visible="false">
                          <ItemTemplate>
                          <asp:Label id="lblPlanTypeId" runat="server" Text='<%#Eval("PLANTYPEID")%>'></asp:Label>
                          </ItemTemplate>
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
                          
                          
                         <%-- <asp:TemplateField HeaderText="CreateDt">
                          <ItemTemplate>
                          <asp:Label id="lblCreateDt" runat="server" Text='<%#Eval("CreateDt","{0:dd/MM/yyyy}")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtCreateDt" runat="server" Text='<%#Eval("CreateDt")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>--%>
                          
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

