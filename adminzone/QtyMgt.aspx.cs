using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminzone_QtyMgt : System.Web.UI.Page
{
    DBManager db = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        //issue_qty.Text = "1";
        //dqty.Text = "1";
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        String date = blood_manufacture_date.Text;
        var dt = DateTime.ParseExact(date, "yyyy-MM-dd", CultureInfo.InvariantCulture);
        String date2 = "" + dt.AddDays(90);
        String bGroup = bgp.Text;
        int quantity = int.Parse(issue_qty.Text);
        bool flag = false;
        int i = 0;
        for (i = 0; i < quantity; i++)
        {
            String query = "INSERT INTO TBL_BLOOD VALUES('" + bGroup + "','" + date + "','" + date2 + "')";
            flag = db.InsertUpdateDelete(query);
        }
        if (flag == true)
            Response.Write("<script>alert('" + quantity + "  Blood Units Added Successfully..!!')</script>");
        else
            Response.Write("<script>alert('Could Not Add the Stock.. Try Again.. !!')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String Blood_group = bgroup.Text;
        String quantity = dqty.Text;
        String query = "DELETE FROM TBL_BLOOD WHERE _id IN ( SELECT TOP (" + quantity + ") _id FROM TBL_BLOOD where BloodGroup='" + Blood_group + "' order by dateOfExpiry)";
        bool flag = db.InsertUpdateDelete(query);
        if (flag == true)
            Response.Write("<script>alert('" + quantity + "  Blood Units Issued Successfully..!!')</script>");
        else
            Response.Write("<script>alert('Required Quantity is not available right now ... !!')</script>");
    }
}