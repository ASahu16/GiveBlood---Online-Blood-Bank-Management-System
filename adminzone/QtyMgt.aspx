<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QtyMgt.aspx.cs" Inherits="adminzone_QtyMgt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Blood Mgt - Quantity Mgt</title>
    <link rel="icon" href="../images/logo-1.png" type="image/x-icon" />
    <link href="../css/style.css" rel="stylesheet" />

    <style>
         .frame {
            width:210px;
            height:250px;
            margin:auto;
            margin-top:35px;
            padding: 35px;
            margin-bottom:45px; 
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
                        <asp:MenuItem Text="Change Pwt." Value="Change Pwt." NavigateUrl="~/adminzone/ChangePwd.aspx"></asp:MenuItem>
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
            <div class="white_background">
                <div style="width:90%; margin:auto;">
                    <div style="float:left; width:50%;">
                        <div class="frame">
						<span style="font-size: 30px; color:#f44336; text-align:center;">Add Blood</span>
						<br /><br />
                    	<asp:TextBox ID="blood_manufacture_date" runat="server" CssClass="TextBox" placeholder="Choose Date.." TextMode="Date"/>
						
					<br />
					                            
						<asp:DropDownList ID="bgp" CssClass="TextBox"  runat="server">
							<asp:ListItem Text="~~~Select Blood Group~~~" />
							<asp:ListItem Text="A+" />
							<asp:ListItem Text="B+" />
							<asp:ListItem Text="AB+" />
							<asp:ListItem Text="O+" />
							<asp:ListItem Text="A-" />
							<asp:ListItem Text="B-" />
							<asp:ListItem Text="AB-" />
							<asp:ListItem Text="O-" />
						</asp:DropDownList>
						<br />
						<asp:TextBox ID="issue_qty" runat="server" CssClass="TextBox" TextMode="Number" placeholder="Quantity..." />
					<br /> <br />
					<center>                       
						<asp:Button ID="Button1" CssClass="Button" Text="Add" runat="server" OnClick="Button1_Click1" />
					</center>
				</div>
                    </div>
                    <div style="float:left; width:50%;">
                        <div class="frame">
						<span style="font-size: 30px; color:#f44336; text-align:center;">Issue Blood</span>
						<br /><br />                    
						<asp:DropDownList ID="bgroup" CssClass="TextBox"  runat="server">
							<asp:ListItem Text="~~~Select Blood Group~~~" />
							<asp:ListItem Text="A+" />
							<asp:ListItem Text="B+" />
							<asp:ListItem Text="AB+" />
							<asp:ListItem Text="O+" />
							<asp:ListItem Text="A-" />
							<asp:ListItem Text="B-" />
							<asp:ListItem Text="AB-" />
							<asp:ListItem Text="O-" />
						</asp:DropDownList>
						<br /><br />
						<asp:TextBox TextMode="Number" ID="dqty" runat="server" CssClass="TextBox" placeholder="Quantity..."  /><br />
					<br /> <br />
					<center>                       
						<asp:Button ID="Button2" CssClass="Button" Text="Issue" runat="server" OnClick="Button2_Click" />
					</center>
				</div>
                    </div>
                </div>
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
