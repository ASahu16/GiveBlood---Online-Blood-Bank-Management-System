using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Appointments : System.Web.UI.Page
{
    DBManager dm = new DBManager();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string q, gen, bg;

        gen = gender.SelectedItem.ToString();
        bg = bloodgroup.SelectedItem.ToString();

        q = "INSERT INTO TBL_APPOINTMENTS VALUES('" + name.Text + "','" + fname.Text + "','" + gen + "','" + bg + "','" + age.Text + "','" + weight.Text + "','" + contactno.Text + "','" + email.Text + "','" + doa.Text + "','" + address.InnerText + "','" + address2.InnerText + "')";

        bool x;

        x = dm.InsertUpdateDelete(q);

        if (x == true)
        {
            Response.Write("<script>alert('Registration Successful!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Registration Unsuccessful!!')</script>");
        }
    }
}