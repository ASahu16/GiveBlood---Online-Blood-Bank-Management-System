<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Give Blood - Home</title>
    <link rel="icon" href="images/logo-1.png" type="image/x-icon" />
    <link href="css/style.css" rel="stylesheet" />

    <style>        
        .auto-style1 {
            width: 671px;
        }
        .auto-style2 {
            width: 686px;
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

            <div style="background-color:#ffebee; padding: 40px 40px 0px 40px; text-align: center;">
			    <span style="font-size: 30px; color:#f44336;">Registration</span>
            </div>
            <div style="background-color:#ffebee; padding: 0px 40px 40px 40px;">
                <br />
                <table>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="name" CssClass="TextBox" runat="server" placeholder="Your Name..." />  
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="name" runat="server" />
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="fname" CssClass="TextBox" runat="server" placeholder="Your Father's Name..." />  
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="fname" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:DropDownList ID="gender" CssClass="TextBox" runat="server" style="border-right:1px solid #f44336;">
                                    <asp:ListItem Text="~~~~~~Select Your Gender~~~~~~" />
                                    <asp:ListItem Text="Male" Value="male" />
                                    <asp:ListItem Text="Female" Value="female" />
                                    <asp:ListItem Text="Other" Value="other" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="gender" runat="server" />
                        </td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="bloodgroup" CssClass="TextBox" runat="server" style="border-right:1px solid #f44336;">
                                    <asp:ListItem Text="~~~Select Your Blood Group~~~" />
                                    <asp:ListItem Text="A+" />
                                    <asp:ListItem Text="B+" />
                                    <asp:ListItem Text="AB+" />
                                    <asp:ListItem Text="O+" />
                                    <asp:ListItem Text="A-" />
                                    <asp:ListItem Text="B-" />
                                    <asp:ListItem Text="AB-" />
                                    <asp:ListItem Text="O-" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="bloodgroup" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="age" CssClass="TextBox" runat="server" placeholder="Your age..." />  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="age" runat="server" />
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="weight" CssClass="TextBox" runat="server" placeholder="Your weight(in kg)..." />  
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="weight" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="contactno" CssClass="TextBox" runat="server" placeholder="Your Contact No..." />  
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="contactno" runat="server" />
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="email" CssClass="TextBox" runat="server" placeholder="Your e-Mail ID..." />  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="email" runat="server" />  
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><textarea runat="server" id="address" cols="5" placeholder="Your Address..." class="TextBox" style="border-right:1px solid #f44336;"></textarea> <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="address" runat="server" /></td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr style="border-top:2px solid #fff; color:#fff;" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" >
                            <asp:TextBox ID="userid" runat="server" CssClass="TextBox" placeholder="Create your userid..." /> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="userid" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="pass" runat="server" CssClass="TextBox" TextMode="Password" placeholder="Password..."/> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="pass" runat="server" />
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cpss" TextMode="Password" runat="server" CssClass="TextBox" placeholder="Confirm Password..." />                  
                                <asp:CompareValidator ID="CompareValidator1" ErrorMessage="*Password Mismatched" ForeColor="Red" ControlToValidate="cpss" ControlToCompare="pass" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="padding-right:20px;">
                            <button type="reset" class="Button" value="Reset" style="float:right;">Reset</button>
                        </td>
                        <td class="auto-style1">
                            <asp:Button ID="Button1" Text="Register" runat="server" CssClass="Button" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
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
