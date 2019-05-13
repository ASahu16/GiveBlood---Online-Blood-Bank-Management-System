<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserQuery.aspx.cs" Inherits="adminzone_UserQuery" %>

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
            <div style="padding:40px;min-height:400px;">
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                        <asp:BoundField DataField="NUMBER" HeaderText="NUMBER" SortExpression="NUMBER" />
                        <asp:BoundField DataField="MESSAGE" HeaderText="MESSAGE" SortExpression="MESSAGE" />
                        <asp:BoundField DataField="MSG_DATE" HeaderText="MSG_DATE" SortExpression="MSG_DATE" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GiveBloodConnectionString2 %>" DeleteCommand="DELETE FROM [TBL_MESSAGE] WHERE [ID] = @original_ID AND (([NAME] = @original_NAME) OR ([NAME] IS NULL AND @original_NAME IS NULL)) AND (([NUMBER] = @original_NUMBER) OR ([NUMBER] IS NULL AND @original_NUMBER IS NULL)) AND (([MESSAGE] = @original_MESSAGE) OR ([MESSAGE] IS NULL AND @original_MESSAGE IS NULL)) AND (([MSG_DATE] = @original_MSG_DATE) OR ([MSG_DATE] IS NULL AND @original_MSG_DATE IS NULL))" InsertCommand="INSERT INTO [TBL_MESSAGE] ([NAME], [NUMBER], [MESSAGE], [MSG_DATE]) VALUES (@NAME, @NUMBER, @MESSAGE, @MSG_DATE)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TBL_MESSAGE] ORDER BY [ID] DESC" UpdateCommand="UPDATE [TBL_MESSAGE] SET [NAME] = @NAME, [NUMBER] = @NUMBER, [MESSAGE] = @MESSAGE, [MSG_DATE] = @MSG_DATE WHERE [ID] = @original_ID AND (([NAME] = @original_NAME) OR ([NAME] IS NULL AND @original_NAME IS NULL)) AND (([NUMBER] = @original_NUMBER) OR ([NUMBER] IS NULL AND @original_NUMBER IS NULL)) AND (([MESSAGE] = @original_MESSAGE) OR ([MESSAGE] IS NULL AND @original_MESSAGE IS NULL)) AND (([MSG_DATE] = @original_MSG_DATE) OR ([MSG_DATE] IS NULL AND @original_MSG_DATE IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_NUMBER" Type="String" />
                        <asp:Parameter Name="original_MESSAGE" Type="String" />
                        <asp:Parameter Name="original_MSG_DATE" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="NUMBER" Type="String" />
                        <asp:Parameter Name="MESSAGE" Type="String" />
                        <asp:Parameter Name="MSG_DATE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="NUMBER" Type="String" />
                        <asp:Parameter Name="MESSAGE" Type="String" />
                        <asp:Parameter Name="MSG_DATE" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_NUMBER" Type="String" />
                        <asp:Parameter Name="original_MESSAGE" Type="String" />
                        <asp:Parameter Name="original_MSG_DATE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
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
