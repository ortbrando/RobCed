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
            populateGroup(ddl1, ddl2);
            populateGroup(ddl3, ddl4);
        }
    }

    protected void populateGroup(DropDownList ddl, DropDownList ddlFollow)
    {
        ddl.AppendDataBoundItems = true;
        ddl.Items.Clear();
        ddl.Items.Add(new ListItem("-Categoria-", "-1"));
        ddlFollow.Items.Add(new ListItem("-Opera-", "-1"));
        
        String querySubcat = "SELECT Id, Nome FROM Categoria";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.Text;
        command.CommandText = querySubcat;
        command.Connection = conn;

        conn.Open();
        ddl.DataSource = command.ExecuteReader();
        ddl.DataTextField = "Nome";
        ddl.DataValueField = "Id";
        ddl.DataBind();
        conn.Close();
    }

    protected void editSubcat(object sender, EventArgs e)
    {
        String query = "UPDATE  SET Nome = @name WHERE Id=@id";
        SqlConnection conn = new SqlConnection(connectionString);

        try
        {
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.Add("@name", SqlDbType.VarChar);
            command.Parameters["@name"].Value = tb1.Text;
            command.Parameters.Add("@id", SqlDbType.Int);
            command.Parameters["@id"].Value = ddl2.SelectedItem.Value;
            if (command.ExecuteNonQuery() > 0)
            {
                lbl1.ForeColor = System.Drawing.Color.Green;
                lbl1.Text = "Sottocategoria modificata correttamente!";
                ddl1.Items.Clear();
                ddl2.Items.Clear();
                populateGroup(ddl1, ddl2);
            }
        }
        catch { }
        finally
        {
            conn.Close();
        }
    }

    

    protected void populateSubcatParam1(object sender, EventArgs e)
    {
        ddl2.AppendDataBoundItems = true;
        ddl2.Items.Clear();
        String querySubcat = "SELECT Id, Nome FROM Sottocategoria WHERE IdCategoria = @id";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand();
        command.Parameters.Add("@id", SqlDbType.Int);
        command.Parameters["@id"].Value = ddl1.SelectedItem.Value;
        command.CommandType = CommandType.Text;
        command.CommandText = querySubcat;
        command.Connection = conn;

        if (int.Parse(ddl1.SelectedItem.Value) > 0)
        {
            conn.Open();
            ddl2.DataSource = command.ExecuteReader();
            ddl2.DataTextField = "Nome";
            ddl2.DataValueField = "Id";
            ddl2.DataBind();
        }
        else
        {
            ddl2.Items.Add(new ListItem("-Sottocategoria-", "-1"));
        }
    }

}