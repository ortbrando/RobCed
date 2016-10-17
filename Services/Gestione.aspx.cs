using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services_Gestione : System.Web.UI.Page
{
    String connectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            populateSingle(ddlCategoria, "Categoria");
        }
    }

    protected void populateSingle(DropDownList ddl, String table)
    {
        ddl.AppendDataBoundItems = true;
        ddl.Items.Clear();
        ddl.Items.Add(new ListItem("-" + table + "-", "-1"));
        String querySubcat = "SELECT Id, NomeIt FROM " + table;
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.Text;
        command.CommandText = querySubcat;
        command.Connection = conn;

        conn.Open();
        ddl.DataSource = command.ExecuteReader();
        ddl.DataTextField = "NomeIt";
        ddl.DataValueField = "Id";
        ddl.DataBind();
        conn.Close();
    }


    protected void ddlCategoria_SelectedIndexChanged(object sender, EventArgs e)
    {
        String query = "SELECT * FROM Opera WHERE IdCategoria = @param";

        try
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.Add("@param", SqlDbType.VarChar);
            command.Parameters["@param"].Value = int.Parse(ddlCategoria.SelectedItem.Value);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            repeaterOpere.DataSource = dt;
            repeaterOpere.DataBind();
        }
        catch { }
    }

    protected void repeaterOpere_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        String query = "SELECT * FROM Dettaglio WHERE IdOpera = @cont";

        try
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.Add("@cont", SqlDbType.VarChar);
            string idOpera = (e.Item.FindControl("hidden") as HiddenField).Value;
            command.Parameters["@cont"].Value = idOpera;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            Repeater r = e.Item.FindControl("repeaterFoto") as Repeater;
            r.DataSource = dt;
            r.DataBind();

        }
        catch { }
    }
}