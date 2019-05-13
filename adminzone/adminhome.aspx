<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminzone_adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Give Blood - AdminHome</title>
    <link rel="icon" href="../images/logo-1.png" type="image/x-icon" />
    <link href="../css/style.css" rel="stylesheet" />

    <style>
        .bloodGroup {
            padding: 6px;
            color: #455a64;
            font-size: 22px;
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
            <!--SliderStart-->
            <div class="slider" style="background-image:url(../images/bg_3.jpg); height:243px;">
                <div id="film" style="height:123px;background-color:rgba(0,0,0,0.7);">
                    <br />
                    <h1>Welcome!!</h1>
                    <h2>To Blood Bank Management.</h2>
                </div>
            </div>
            <!--SliderEnd-->
            <div class="white_background" style="padding:0px;">
                <div id="user_details" runat="server"></div>
                <div style="float:left; width:60%; padding:4%; text-align:justify" >
                    <span style="font-size: 35px; color:#f44336;">Welcome!</span>
                    <p>
                        No doubt the first and foremost advantage of donating blood is the exalted feeling of saving someone's life. If we donate the little excess blood in our body, it could save someone's life without creating any problem for us.
                        <br />
Blood donation also burns the extra calories and reduces your cholesterol level. After donating blood, the count of blood cells decreases in our body, which stimulates the bone marrow to produce new red blood cells in order to replenish the loss. So, it stimulates the production of new blood cells and refreshes the system.

                    </p>
                </div>
                
                <div style="float:left; width:30%; background-color:#cfd8dc; height:430px; ">
                        <div style="padding:4%; padding-top:10%; width:91%;font-size: 16px;">
			            <span style="font-size: 30px; color:#f44336;">Blood In Stock</span>
                            <br />
                            <hr />
                            <br />
                            <center>
                            <div id="stock_summary" runat="server"></div>
                            </center>
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
