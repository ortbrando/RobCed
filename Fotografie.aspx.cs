using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fotografie : System.Web.UI.Page
{
    String connectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        bindOperas();

    }

    protected void bindOperas()
    {
        String query = "SELECT * FROM Opera WHERE IdCategoria = 2  ORDER BY Id DESC";

        try
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            repeater.DataSource = dt;
            repeater.DataBind();
        }
        catch { }
    }

    protected void Opera_Click(object sender, EventArgs e)
    {
        String s = ((LinkButton)sender).CommandArgument;
        Response.Redirect("Opera.aspx?id=" + s);

    }
    
}