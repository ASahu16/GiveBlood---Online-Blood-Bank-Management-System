using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{

    DataTable tb;
    DBManager d = new DBManager();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string uid = tatuid.Text;
        String upass = pass.Text;
        String dbpass = "";
        String Query = "SELECT * FROM TBL_LOGIN WHERE USERID = '" + uid + "'";
        tb = d.ReadBulkData(Query);
        for (int t = 0; t < tb.Rows.Count; t++)
        {
            dbpass = "" + tb.Rows[t][1];
        }
        if (dbpass.Equals(""))
            Response.Write("<script>alert('Invalid User Id !!')</script>");
        else if (dbpass.Equals(upass))
        {
            Response.Write("<script>alert('Welcome Here.. You have successfully Logged In !!')</script>");
            Helper.uname = uid;
            Helper.upassword = upass;
            Response.Redirect("adminzone/adminhome.aspx");
        }
        else
            Response.Write("<script>alert('Worng Password..... Try again !!')</script>");
    }
}