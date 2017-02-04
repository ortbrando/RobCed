using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Quadrimensionali : System.Web.UI.Page
{
    String connectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getDescription();
            bindOperas();
        }

    }

    protected void getDescription()
    {
        String query = "SELECT DescrizioneIt FROM Categoria WHERE Id = 3";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(query, conn);
        try
        {
            conn.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                descrizioneCat.Text = reader["DescrizioneIt"].ToString();
            }

        }
        catch { }
        finally
        {
            command.Dispose();
            conn.Close();
        }
    }

    protected void bindOperas()
    {
        String query = "SELECT * FROM Opera WHERE IdCategoria = 3 ORDER BY Id DESC";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(query, conn);

        try
        {            
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            repeaterOperas.DataSource = dt;
            repeaterOperas.DataBind();
        }
        catch { }
        finally
        {
            command.Dispose();
            conn.Close();
        }
    }

    protected void Opera_Click(object sender, EventArgs e)
    {
        String s = ((LinkButton)sender).CommandArgument;
        Response.Redirect("Opera.aspx?id=" + s);

    }
    protected void OperaPreview_Click(object sender, ImageClickEventArgs e)
    {
        String s = ((ImageButton)sender).CommandArgument;
        Response.Redirect("Opera.aspx?id=" + s);
    }
}