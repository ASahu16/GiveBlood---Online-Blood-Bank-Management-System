using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class DBManager
{
    SqlConnection con = new SqlConnection("Data Source=SAHU\\SAHU;Initial Catalog=GiveBlood;Integrated Security=True");

    public bool InsertUpdateDelete(string command)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand(command, con);
        int j = cmd.ExecuteNonQuery();
        con.Close();
        if (j > 0)
            return true;
        else
            return false;
    }
    public DataTable ReadBulkData(string command)
    {
        SqlDataAdapter sa = new SqlDataAdapter(command, con);
        DataTable dt = new DataTable();
        sa.Fill(dt);
        return dt;
    }
}