using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string q1, q2, dt, gen, bg;
        dt = DateTime.Now.ToString("dd/MMM/yyyy");

        DBManager dm = new DBManager();

        gen = gender.SelectedItem.ToString();
        bg = bloodgroup.SelectedItem.ToString();

        q1 = "INSERT INTO TBL_REGISTRATION VALUES('" + name.Text + "','" + fname.Text + "','" + gen + "','" + bg + "','" + age.Text + "','" + weight.Text + "','" + contactno.Text + "','" + email.Text + "','" + address.InnerText + "','" + dt + "')";

        q2 = "INSERT INTO TBL_LOGIN VALUES('" + userid.Text + "','" + pass.Text + "')";

        bool x, y;

        x = dm.InsertUpdateDelete(q1);
        y = dm.InsertUpdateDelete(q2);

        if (x == true && y == true)
        {
            Response.Write("<script>alert('Registration Successful!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Registration Unsuccessful!!')</script>");
        }
    }
}