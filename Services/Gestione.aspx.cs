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
		String querySubcat = "SELECT Id, NomeIt FROM " + table;
		SqlConnection conn = new SqlConnection(connectionString);
		SqlCommand command = new SqlCommand(querySubcat, conn);
		
		try {
			ddl.AppendDataBoundItems = true;
			ddl.Items.Clear();
			ddl.Items.Add(new ListItem("-" + table + "-", "-1"));
			conn.Open();
			ddl.DataSource = command.ExecuteReader();
			ddl.DataTextField = "NomeIt";
			ddl.DataValueField = "Id";
			ddl.DataBind();
			conn.Close();
		} catch (Exception ex) {}
		finally {
			command.Dispose();
			conn.Close();
		}
    }


    protected void ddlCategoria_SelectedIndexChanged(object sender, EventArgs e)
    {
        string query = "SELECT * FROM Opera WHERE IdCategoria = @param AND Visibile = 1";
		SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(query, conn);

        try
        {
            conn.Open();
            command.Parameters.Add("@param", SqlDbType.VarChar);
            command.Parameters["@param"].Value = int.Parse(ddlCategoria.SelectedItem.Value);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            repeaterOpere.DataSource = dt;
            repeaterOpere.DataBind();
        } catch (Exception ex) {}
		finally {
			command.Dispose();
			conn.Close();
		}
    }

    protected void repeaterOpere_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        String query = "SELECT * FROM Dettaglio WHERE IdOpera = @cont";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(query, conn);

        try
        {
            conn.Open();
            command.Parameters.Add("@cont", SqlDbType.VarChar);
            string idOpera = (e.Item.FindControl("hidden") as HiddenField).Value;
            command.Parameters["@cont"].Value = idOpera;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            Repeater r = e.Item.FindControl("repeaterFoto") as Repeater;
            r.DataSource = dt;
            r.DataBind();
        } catch (Exception ex) {}
		finally {
			command.Dispose();
			conn.Close();
		}
    }

    protected void btnCancella_Click(object sender, EventArgs e)
    {
		DbController control = new DbController(connectionString);

        try
        {
            QueryParameter[] q = new QueryParameter[1] { new QueryParameter("param", ((LinkButton)sender).CommandArgument, SqlDbType.Int) };
            control.Write("DELETE FROM Dettaglio WHERE IdOpera = @param", q);
            control.Write("DELETE FROM Opera WHERE Id = @param", q);
            Response.Redirect(Request.RawUrl);
        }
        catch (Exception exx)
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Errore durante la cancellazione dell'opera";
        } finally {
			control.Close();
		}
        
    }

    protected void btnNascondi_Click(object sender, EventArgs e)
    {
		DbController control = new DbController(connectionString);
        try
        {
            QueryParameter[] q = new QueryParameter[1] { new QueryParameter("param", ((LinkButton)sender).CommandArgument, SqlDbType.Int) };
            control.Write("UPDATE Opera SET Visibile = 0 WHERE Id = @param", q);
            Response.Redirect(Request.RawUrl);
        }
        catch (Exception ex2)
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Errore durante l'operazione";
        } finally {
			control.Close();
		}
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
		DbController control = new DbController(connectionString);
        try
        {
            QueryParameter[] q = new QueryParameter[6];
            q[0] = new QueryParameter("nomeit", ((TextBox)(((LinkButton)sender).NamingContainer).FindControl("tbTitoloIt")).Text, SqlDbType.VarChar);
            q[1] = new QueryParameter("nomeen", ((TextBox)(((LinkButton)sender).NamingContainer).FindControl("tbTitoloEn")).Text, SqlDbType.VarChar);
            q[2] = new QueryParameter("descrizioneit", ((TextBox)(((LinkButton)sender).NamingContainer).FindControl("tbDescrizioneIt")).Text, SqlDbType.VarChar);
            q[3] = new QueryParameter("descrizioneen", ((TextBox)(((LinkButton)sender).NamingContainer).FindControl("tbDescrizioneEn")).Text, SqlDbType.VarChar);
            q[4] = new QueryParameter("data", System.DateTime.Now, SqlDbType.DateTime);
            q[5] = new QueryParameter("id", ((LinkButton) sender).CommandArgument, SqlDbType.Int);
            control.Write("UPDATE Opera SET TitoloIt = @nomeit, TitoloEn = @nomeen, DescrizioneIt = @descrizioneit, DescrizioneEn = @descrizioneen, Data = @data WHERE Id = @id" , q);
            Response.Redirect(Request.RawUrl);
        }
        catch (Exception ex3)
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Errore durante l'operazione: " + ex3;
        } finally {
			control.Close();
		}
    }

}