using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Opera : System.Web.UI.Page
{
    String connectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ToString();
    string idOpera;

    protected void Page_Load(object sender, EventArgs e)
    {
        idOpera = Request.QueryString["id"].ToString();
        bindImages();
        bindPreview();
    }

    protected void bindImages() {
        String query = "SELECT TOP 3 * FROM Foto WHERE IdOpera = @param";

        try
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.Add("@param", SqlDbType.Int);
            command.Parameters["@param"].Value = idOpera;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            repeaterImages.DataSource = dt;
            repeaterImages.DataBind();
        }
        catch { }
    }

    protected void bindPreview() {
        String query = "SELECT * FROM Opera WHERE Id = @param";

        try
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.Add("@param", SqlDbType.Int);
            command.Parameters["@param"].Value = int.Parse(idOpera);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            repeaterPreview.DataSource = dt;
            repeaterPreview.DataBind();
        }
        catch { }
    }
}