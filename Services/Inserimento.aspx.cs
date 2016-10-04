using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services_Inserimento : System.Web.UI.Page
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
        String querySubcat = "SELECT Id, Nome FROM " + table;
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

    protected string fileUpload(FileUpload control)
    {
        string filename = "";
        try
        {
            if (control.HasFile)
            {
                filename = Path.GetFileName(control.FileName);
            }
            else
            {
                filename = "default-placeholder.png";
            }
            control.SaveAs(Server.MapPath("~/img/" + filename));
        }

        catch (Exception ex1)
        {
            StatusLabel.Text = "Errore nell'upload";
        }

        return "/img/" + filename;
    
    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        if(int.Parse(ddlCategoria.SelectedItem.Value) > 0){
            if (!fuc4.HasFile)
            {
                StatusLabel.Text = "Inserisci un'immagine valida.";
            }

            String query = "INSERT INTO Opera VALUES (@param1, @param2, @param3, @param4)";
            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand command = new SqlCommand(query, conn);
                command.Parameters.Add("@param1", SqlDbType.VarChar);
                command.Parameters["@param1"].Value = tbTitoloIt.Text;
                command.Parameters.Add("@param2", SqlDbType.VarChar);
                command.Parameters["@param2"].Value = tbDescrizioneIt.Text;
                command.Parameters.Add("@param3", SqlDbType.VarChar);
                command.Parameters["@param3"].Value = fileUpload(fuc4);
                command.Parameters.Add("@param4", SqlDbType.Int);
                command.Parameters["@param4"].Value = int.Parse(ddlCategoria.SelectedItem.Value);
                command.ExecuteNonQuery();
                StatusLabel.Text = "Opera inserita correttamente!";
            }
            catch(Exception ex) {
                StatusLabel.Text = ex.ToString();
            }
        } else {
            StatusLabel.Text = "Seleziona una categoria.";
        }
        
    }
}