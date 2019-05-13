<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApmtMgt.aspx.cs" Inherits="adminzone_ApmtMgt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Give Blood - AdminHome</title>
    <link rel="icon" href="../images/logo-1.png" type="image/x-icon" />
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body bgcolor="#e57373">
    <form id="form1" runat="server">

    <!--Container1Start-->
    <div >
        <div style="width:18%; height:170px; background-color:#ff8a80; float:left;"></div>    
        <div class="container" style="float:left;">
            <!--LogoStart-->
            <div id="logo">
                <img src="../images/logo.png" alt="GiveBlood" style="height:80px; color:white " />
            </div>
            <!--LogoEnd-->

            <!--MenuStart-->
                <div id="menu">
                    <asp:Menu ID="Menu1" runat="server" Font-Size="24px" Orientation="Horizontal" >
                        <DynamicHoverStyle ForeColor="#FFCDD2" />
                        <DynamicMenuItemStyle BackColor="#FF5252" BorderColor="#EF5350" ForeColor="White" HorizontalPadding="10px" VerticalPadding="5px" Width="100%" />
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/adminzone/adminhome.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Blood Mgt." Value="Blood Mgt.">
                                <asp:MenuItem NavigateUrl="~/adminzone/QtyMgt.aspx" Text="Quantity Mgt." Value="Quantity Mgt."></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/adminzone/view.aspx" Text="View" Value="View"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="CR Mgt." Value="CR Mgt.">
                                <asp:MenuItem Text="News &amp; Event" Value="News &amp; Event" NavigateUrl="~/adminzone/news-event.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Appointments" Value="Appointments" NavigateUrl="~/adminzone/ApmtMgt.aspx"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/adminzone/UserQuery.aspx" Text="User Query" Value="User Query"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Change Pwd." Value="Change Pwd." NavigateUrl="~/adminzone/ChangePwd.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="LogOut" Value="LogOut" NavigateUrl="~/adminzone/logout.aspx"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BorderColor="#FF3300" ForeColor="#FFCDD2" />
                        <StaticMenuItemStyle ForeColor="White" HorizontalPadding="25px" BackColor="#EF5350" BorderColor="#EF5350" BorderStyle="None" VerticalPadding="10px" />
                        <StaticMenuStyle HorizontalPadding="60px" />
                    </asp:Menu>
                </div>        
                <!--MenuEnd-->

        </div>
        <div style="width:18%; height:170px; background-color:#ff8a80; float:left;"></div>
    
    </div>
    <!--Container1End-->

    <!--Container2Start-->
    <div>
        <div class="container" style="background-color:#eceff1; float:left; margin-left:18%; margin-right:18%;">
            <div style="padding:5px; padding-top:20px; min-height :450px;">

                <div>
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" DataKeyNames="ID">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="F Name" HeaderText="F Name" SortExpression="F Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Blood Group" HeaderText="Blood Group" SortExpression="Blood Group" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                        <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                        <asp:BoundField DataField="DOA" HeaderText="DOA" SortExpression="DOA" />
                        <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                        <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#ef5350" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GiveBloodConnectionString2 %>" SelectCommand="SELECT * FROM [TBL_APPOINTMENTS] ORDER BY [ID] DESC"></asp:SqlDataSource>
                
                
                
            </div>
        </div>
    </div>
    <!--Container2End-->

    <!--Container3Start-->
    <div>
        <div class="container" style="background-color:#212121; float:left; margin-left:18%; margin-right:18%;">

        <!--FooterStart-->
        <div class="footer" >©2019 Company All Rights Reserved.</div>
        <!--FooterEnd-->
        </div>
    </div>
    <!--Container3End-->
    </form>

</body>
</html>
