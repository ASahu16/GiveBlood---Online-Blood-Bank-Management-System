<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Give Blood - AboutUs</title>
    <link rel="icon" href="images/logo-1.png" type="image/x-icon" />
    <link href="css/style.css" rel="stylesheet" />

    <style></style>
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
            <div style="background-color:#ffebee; padding: 40px 40px 0px 40px; text-align: justify;">
			        <center><span style="font-size: 30px; color:#f44336;">About Us</span></center>
                    <hr style="border-bottom:1px solid #fff;" />
                    <br />
                    <p>
                        In compliance to Hon'ble Supreme Court directives dated <b>4th January 1996</b>, the Give Blood Transfusion Councils is constituted under Chairpersonship of Principal Secretary, Medical Health & Family Welfare, Government India vide GO No. <b>1239/5-10-96-57-Drug/95 TC dated 15th May, 1996</b> with the objective of Overall implementation of an organized Blood Transfusion Services through a network of blood banks throughout state.
                    <br /><br />
                    <b style="color:#e53935; font:bold; ">Role and Functions of Give Blood Transfusion Councils (GBTCs)</b>
                    <br /><br />
                        The Give Blood Transfusion Council is a society registered under the Societies registration Act. The GBTC should be a representative body having in it representation from the Directorate of Health Services in the state, State Drug Controller, Department of Finance of the State/UT, Indian Red Cross Society, private blood banks, NGO active in the field of securing voluntary blood donations. The Secretary to the Government in charge of Department of Health would be the president of the GBTC. The GBTC will be responsible for overall implementation, within individual state/UT, all policy decisions for the BTS taken by the NBTC, within the parameters of the NBP and as detailed in the Action Plan for blood safety. This encompass
                    <br /><br />
                        Organizing the BTS in their state/ UT into a network of RBTC, BB and BSCs with participation from government, private, IRCS and other NGO run blood centers with GBTC monitoring their functioning.
                    <br /><br />
                        Formally linking blood banks in the State/UT to the nearest VCTC
                    <br /><br />
                        Identifying RBTC across the state /UT that conform to the parameters of RBTC as defined in the action plan.
                    <br /><br />
                        Developing a structured donor recruitment and retention programs for the state including IEC campaigns for youth, to generate voluntary non-remunerated blood donors and phase out replacement donors
                    <br /><br />
                        Implementing a mechanism to recognize the services of regular voluntary donors and donor organizers.
                    <br /><br />
                        Developing a comprehensive quality management system for the BTS in the state including EQAS/ accreditation.
                    <br /><br />
                        Providing adequate facilities for transporting blood and blood products including cold chain maintenance and ensuring appropriate management of blood supply.
                    <br /><br />
                        Equipping RBTC/ BB's with blood component separation units in sufficient numbers to make blood components available through the network of regional and satellite blood centers.
                    <br /><br />
                        Advocate creating department of Transfusion Medicine in medical colleges within state and in starting MD Transfusion Medicine and Diploma courses in Transfusion Medicine.
                    <br /><br />
                        Organize in-service training programs for all category of personnel working in the BTS including drug inspectors and other officers from regulatory agencies.
                    <br /><br />
                        Create a separate cadre for the blood transfusion services in the state to retain suitably trained medical and paramedical personnel in the field and improve their career prospects and opportunities for promotion.
                    <br /><br />                        	
                        Make a corpus of funds available to facilitate research in transfusion medicine and technology related to blood banking.
                    <br /><br />
                        Ensuring adherence to bio safety guidelines and disposal of bio hazardous waste as per the provisions of the existing guidelines/rules
                    <br /><br />
                        Shall enact rules for registration of nursing homes wherein provision for affiliation with a licensed blood bank incorporating procurement of blood for their patients
                    <br /><br />
                        Generating funds for the blood transfusion services for making it self-sufficient.
                    <br /><br />
                        Dealing with matters related to property and financial matters as related to the Council.
                    <br /><br />
                        <b style="color:#e53935; font:bold; ">Objectives of the State Council are to:</b>
                    <br />
                        <ul>
                            <li>Ensure quality blood supply as per demand.</li>
                            <li>Promote voluntary blood donation through education and promotion.</li>
                            <li>Ensure appropriate use of blood and blood product</li>
                            <li>Standardized Blood Transfusion Practice in the State.</li>

                        </ul>
                    </p>
                    <br /><br />
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