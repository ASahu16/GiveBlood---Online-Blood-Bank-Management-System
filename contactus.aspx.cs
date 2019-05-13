using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string q, dt;
        dt = DateTime.Now.ToString("dd/MMM/yyyy");

        DBManager dm = new DBManager();

        q = "INSERT INTO TBL_MESSAGE VALUES('" + name.Text + "','" + number.Text + "','" + msg.InnerText + "','" + dt + "')";

        bool x;
        x = dm.InsertUpdateDelete(q);

        if (x == true)
        {
            Response.Write("<script>alert('Message Sent!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Message not Sent!')</script>");
        }
    }
}