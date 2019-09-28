<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ClientList.aspx.cs" Inherits="ClientList" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="Gridstyle.css" rel="stylesheet" type="text/css" />
 <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<asp:UpdatePanel ID="Upanel" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    <div align="center">
 
                            
                            <h3> Website HitList </h3>
                            <div  style="overflow:scroll; height:370px; width:357px; background-color:White">
                   <asp:GridView ID="grdWebsiteHitList" runat="server" AllowPaging="true" Font-Size="Small"
                       AutoGenerateColumns="False" PageSize="50000" CssClass="Grid" PagerStyle-CssClass="pgr"
                        AlternatingRowStyle-CssClass="alt" EmptyDataText="No Such Data Found" 
                           DataKeyNames="HITID" AllowSorting="True">
                          
                          
                                           
                        <Columns>
                             <asp:TemplateField HeaderText="SNo">
                                  <ItemTemplate>
                                      <%#Container.DataItemIndex+1 %>
                                  </ItemTemplate>
                              </asp:TemplateField>

                        
                        <asp:TemplateField HeaderText="HITID" Visible="false">
                          <ItemTemplate>
                          <asp:Label id="lblHITID" runat="server" Text='<%#Eval("HITID")%>'></asp:Label>
                          </ItemTemplate>
                          </asp:TemplateField>
                     
                          <asp:TemplateField HeaderText="IP ADDR">
                          <ItemTemplate>
                          <asp:Label id="lblIPADDR" runat="server" Text='<%#Eval("IPADDR")%>'></asp:Label>
                          </ItemTemplate>
                         
                          </asp:TemplateField>
                          
                          
                 
                         <asp:TemplateField HeaderText="HIT DATE">
                          <ItemTemplate>
                          <asp:Label id="lblHITDATE" runat="server" Text='<%#Eval("HITDATE","{0:dd/MM/yyyy}")%>'></asp:Label>
                          </ItemTemplate>
                         
                          </asp:TemplateField>
                          
                          <asp:TemplateField HeaderText="HIT TIME">
                          <ItemTemplate>
                          <asp:Label id="lblHITTIME" runat="server" Text='<%#Eval("HITTIME")%>'></asp:Label>
                          </ItemTemplate>
                          <EditItemTemplate>
                          <asp:TextBox ID="txtHITTIME" runat="server" Text='<%#Eval("HITTIME")%>'></asp:TextBox>
                          
                          </EditItemTemplate>
                          </asp:TemplateField>
                          
                          
                        </Columns>
                                     
                        <PagerStyle CssClass="pgr" />
                        <AlternatingRowStyle CssClass="alt" />
                   
                  </asp:GridView>
                  </div>
                            
                      
                    </div>
                 
     </ContentTemplate>
     
     <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Tmr" EventName="Tick" />
        </Triggers>
     </asp:UpdatePanel>
<asp:Timer ID="Tmr" runat="server" Interval="8000" OnTick="Tmr_Tick"></asp:Timer>
</asp:Content>

