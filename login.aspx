<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Give Blood - LogIn</title>
    <link rel="icon" href="images/logo-1.png" type="image/x-icon" />
    <link href="css/style.css" rel="stylesheet" />

    <style>
        #frame {
            width:300px;
            margin:auto;
            margin-top:80px;
            padding: 50px;
            border:1px solid #ef5350;
            box-shadow:10px 10px gray;
        }
    </style>
</head>
<body bgcolor="#e57373">
    <form id="form1" runat="server">
    <!--Container1Start-->
    <div>
        <div style="width:18%; height:170px; background-color:#ff8a80; float:left;"></div>    
        <div class="container" style="float:left;">
            <!--LogoStart-->
            <div id="logo">
                <img src="images/logo.png" alt="Logo" style="height:80px; " />
            </div>
            <!--LogoEnd-->

            <!--MenuStart-->
            
            <div id="menu">
                <asp:Menu ID="Menu1" runat="server" Font-Size="24px" Orientation="Horizontal" >
                    <Items>
                        <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/index.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Appointments" Value="Appointments" NavigateUrl="~/Appointments.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="LogIn" Value="LogIn" NavigateUrl="~/login.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="About" Value="About" NavigateUrl="~/aboutus.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Contact" Value="Contact" NavigateUrl="~/contactus.aspx"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BorderColor="#FF3300" ForeColor="#FFCDD2" />
                    <StaticMenuItemStyle ForeColor="White" HorizontalPadding="25px" />
                    <StaticMenuStyle VerticalPadding="10px" HorizontalPadding="71px" />
                </asp:Menu>
            </div>     
            <!--MenuEnd-->

        </div>
        <div style="width:18%; height:170px; background-color:#ff8a80; float:left;"></div>
    
    </div>
    <!--Container1End-->

    <!--Container2Start-->
    <div>
        <div class="container" style="background-color:#eceff1; min-height:500px; float:left; margin-left:18%; margin-right:18%;">
            
            <div id="frame">
                    <span style="font-size: 30px; color:#f44336; text-align:center;">Log In</span>
                    <br /><br />
                    <asp:TextBox ID="tatuid" runat="server" CssClass="TextBox" placeholder="Your ID..." /><br />
                    <asp:RequiredFieldValidator ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="tatuid" runat="server" />
                    <br />
                    <asp:TextBox ID="pass" runat="server" CssClass="TextBox" TextMode="Password" placeholder="Password..." /><br />
                    <asp:RequiredFieldValidator ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="pass" runat="server" />
                <br />
                <center>
                    &nbsp;<br /><br />
                    <asp:Button ID="Button1" CssClass="Button" Text="LogIn" runat="server" OnClick="Button1_Click" />
                </center>
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
