<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="adminzone_ChangePwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Give Blood - Admin Settings</title>
    <link rel="icon" href="../images/logo-1.png" type="image/x-icon" />
    <link href="../css/Style.css" rel="stylesheet" />

    <style>        
        #change_password_frame {
            width: 300px;
            margin: auto;
            margin-top: 50px;
            margin-bottom:auto;
            padding: 50px;
            border: 1px solid #ef5350;
            box-shadow: 10px 10px gray;
        }
    </style>

</head>
<body bodybgcolor="#e57373">
    <form id="form1" runat="server">

        <!--Container1Start-->
        <div>
            <div style="width: 18%; height: 170px; background-color: #ff8a80; float: left;"></div>
            <div class="container" style="float: left;">
                <!--LogoStart-->
                <div id="logo">
                    <img src="../images/logo.png" alt="Logo" style="height: 80px;" />
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
            <div style="width: 18%; height: 170px; background-color: #ff8a80; float: left;"></div>

        </div>
        <!--Container1End-->

        <!--Container2Start-->
        <div>
            <div class="container" style="background-color: #eceff1; min-height: 500px; float: left; margin-right: 18%; margin-left: 18%;">

                <div id="change_password_frame">
                    <span style="font-size: 30px; color: #f44336; text-align: center;">Change Password</span>
                    <br />
                    <br />
                    <asp:TextBox ID="opass" runat="server" CssClass="TextBox" TextMode="Password" placeholder="Old Password..." /><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="opass" runat="server" />
                    <br />
                    <asp:TextBox ID="npass" runat="server" CssClass="TextBox" TextMode="Password" placeholder="New Password..." /><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="npass" runat="server" />
                    <br />
                    <asp:TextBox ID="cpass" runat="server" CssClass="TextBox" TextMode="Password" placeholder="Confirm Password..." /><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="cpass" runat="server" />
                    
                    <br />
                    <center>
                    <br /><br />
                    <asp:Button ID="Reset_Password_Button" CssClass="Button" Text="CHANGE" runat="server" OnClick="Reset_Password_Button_Click" />
                </center>
                </div>



            </div>

        </div>
        <!--Container2End-->

        <!--Container3Start-->
        <div>
            <div class="container" style="background-color: #212121; float: left; margin-left: 18%; margin-right: 18%;">

                <!--FooterStart-->
                <div class="footer">©2019 Company All Rights Reserved.</div>
                <!--FooterEnd-->
            </div>
        </div>
        <!--Container3End-->
    </form>
</body>
</html>