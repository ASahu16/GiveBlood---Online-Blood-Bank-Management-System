using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminzone_news_event : System.Web.UI.Page
{

    DBManager dm = new DBManager();
    DataTable tb;

    protected void Page_Load(object sender, EventArgs e)
    {
        String query = "SELECT * FROM News_Event ORDER BY Date DESC";
        tb = dm.ReadBulkData(query);
        String date = "";
        String message = "";
        for (int t = 0; t < tb.Rows.Count; t++)
        {
            date = "" + tb.Rows[t][0];
            message = "" + tb.Rows[t][1];

            Label date_lbl = new Label();
            date_lbl.CssClass = "News_Event_Date";
            date_lbl.Text = date;

            Label message_lbl = new Label();
            message_lbl.CssClass = "News_Event_Message";
            message_lbl.Text = message;

            News_Event.Controls.Add(date_lbl);
            News_Event.Controls.Add(new Literal() { Text = "<br/>" });
            News_Event.Controls.Add(message_lbl);

            News_Event.Controls.Add(new Literal() { Text = "<br/>" });
            News_Event.Controls.Add(new Literal() { Text = "<br/>" });
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string q;

        q = "INSERT INTO News_Event VALUES('" + dateofevent.Text + "','" + msg.InnerText + "')";
        
        bool x;

        x = dm.InsertUpdateDelete(q);

        if (x == true)
        {
            Response.Write("<script>alert('Event Generated!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Something Went Wrong!')</script>");
        }
    }
}