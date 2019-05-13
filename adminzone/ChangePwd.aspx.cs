using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminzone_ChangePwd : System.Web.UI.Page
{
    DBManager d = new DBManager();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Reset_Password_Button_Click(object sender, EventArgs e)
    {
        String oldPassword = opass.Text;
        String newPassword = npass.Text;
        String confirmPassword = cpass.Text;

        if (oldPassword.Equals(Helper.upassword))
        {
            if (newPassword.Equals(confirmPassword))
            {
                String query = "Update TBL_LOGIN SET [PASSWORD] = '" + newPassword + "' WHERE USERID ='" + Helper.uname + "'";
                bool u = d.InsertUpdateDelete(query);
                if (u == true)
                {
                    Response.Write("<script>alert('Password Changed.. Login Again !!')</script>");
                    Response.Redirect("../login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Error.. Try Again !!')</script>");
                }

            }
            else
            {
                // code for pasword mismatch
                Response.Write("<script>alert('Pasword Mismatch... Try Again !!')</script>");
            }
        }
        else
        {
            // code for worng old password
        }

    }
}