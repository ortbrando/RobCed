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
        if (Request.QueryString["id"] != null)
        {
            idOpera = Request.QueryString["id"].ToString();
            bindImages();
            bindPreview();
        }
        else
            Response.Redirect("Homepage.aspx");
    }

    protected void bindImages() {
        String query = "SELECT TOP 2 * FROM Dettaglio WHERE IdOpera = @param";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(query, conn);

        try
        {
            conn.Open();
            command.Parameters.Add("@param", SqlDbType.Int);
            command.Parameters["@param"].Value = idOpera;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            repeaterImages.DataSource = dt;
            repeaterMobile.DataSource = dt;
            repeaterImages.DataBind();
            repeaterMobile.DataBind();
            
        }
        catch { }
        finally
        {
            command.Dispose();
            conn.Close();
        }
    }

    protected void bindPreview() {
        String query = "SELECT * FROM Opera WHERE Id = @param";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(query, conn);

        try
        {           
            conn.Open();            
            command.Parameters.Add("@param", SqlDbType.Int);
            command.Parameters["@param"].Value = int.Parse(idOpera);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            repeaterPreview.DataSource = dt;
            repeaterPreview.DataBind();
        }
        catch { }
        finally
        {
            command.Dispose();
            conn.Close();
        }
    }
}