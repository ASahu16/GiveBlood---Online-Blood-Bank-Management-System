using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminzone_adminhome : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    DataTable tb;

    protected void Page_Load(object sender, EventArgs e)
    {
        String query = "SELECT BloodGroup,COUNT(BloodGroup) FROM TBL_BLOOD GROUP BY BloodGroup ORDER BY COUNT(BloodGroup)";
        tb = dm.ReadBulkData(query);
        String group = "";
        String quantity = "";
        for (int t = 0; t < tb.Rows.Count; t++)
        {
            group = "" + tb.Rows[t][0];
            quantity = "" + tb.Rows[t][1];

            Label date_lbl = new Label();
            date_lbl.CssClass = "bloodGroup";
            date_lbl.Text = group + "&emsp;:&emsp;" + quantity;
            stock_summary.Controls.Add(date_lbl);
            stock_summary.Controls.Add(new Literal() { Text = "<br/><br/>" });
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}