<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Give Blood - Home</title>
    <link rel="icon" href="images/logo-1.png" type="image/x-icon" />
    <link href="css/style.css" rel="stylesheet" />

    <style>
        .News_Event_Date
	    {
            color: #f44336; 
            font-style: italic;
	    }
        .News_Event_Message
	    {
            color: #37474f;
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
        <div class="container" style="background-color:#eceff1; float:left; margin-left:18%; margin-right:18%;">

            <!--SliderStart-->
            <div class="slider">
                <div id="film">
                    <br /><br /><br />
                    <h1>Give Blood</h1>
                    <h2>Register today. Become a blood donor.</h2>
                    <asp:Button Text="Register Now" runat="server" CssClass="Button" OnClick="Unnamed1_Click" />
                </div>
            </div>
            <!--SliderEnd-->

            <!--Grid(1)Start-->
            <div>
                <!--Grid(1) Right Side-->
                <div class="lside">
                    <div style="padding:4%; padding-top:3%;">
                        <span style="font-size: 35px; color:#f44336;" ;="">WELCOME MESSAGE</span><br />
			            <h3>"The gift of blood is the gift of life."</h3>
			            <p style="font-size:16px; text-align:justify;">
                            No doubt the first and foremost advantage of donating blood is the exalted feeling of saving someone's life. If we donate the little excess blood in our body, it could save someone's life without creating any problem for us.<br />
Blood donation also burns the extra calories and reduces your cholesterol level. After donating blood, the count of blood cells decreases in our body, which stimulates the bone marrow to produce new red blood cells in order to replenish the loss. So, it stimulates the production of new blood cells and refreshes the system.
			            </p>
                        <a href="aboutus.aspx" style="color:#f44336;">Read more</a>
                    </div>
                </div>
                <!--Grid(1) Left Side-->
                <div class="rside">
                    <div style="padding:4%; width:91%; height:350px; font-size: 16px;">
			            <span style="font-size: 35px; color:#f44336;">NEWS &amp; EVENT</span><br />
                
                        <marquee direction="up"  style="padding:5%; height:280px; " onmouseover="this.stop();" onmouseout="this.start();">
			                <div id="News_Event" runat="server"></div>			        
                         </marquee>
                    </div>
                </div>
            </div>
            <!--Grid(1)End-->           

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
