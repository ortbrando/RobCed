using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
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

            String query = "INSERT INTO Opera VALUES (@param1, @param2, @param3, @param4, @param5, @param6, 1, @param7)";
            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand command = new SqlCommand(query, conn);
                command.Parameters.Add("@param1", SqlDbType.VarChar);
                command.Parameters["@param1"].Value = tbTitoloIt.Text;
                command.Parameters.Add("@param2", SqlDbType.VarChar);
                command.Parameters["@param2"].Value = tbTitoloEn.Text;
                command.Parameters.Add("@param3", SqlDbType.VarChar);
                command.Parameters["@param3"].Value = tbDescrizioneIt.Text;
                command.Parameters.Add("@param4", SqlDbType.VarChar);
                command.Parameters["@param4"].Value = tbDescrizioneEn.Text;
                command.Parameters.Add("@param5", SqlDbType.VarChar);
                command.Parameters["@param5"].Value = fileUpload(fuc4);
                command.Parameters.Add("@param6", SqlDbType.DateTime);
                command.Parameters["@param6"].Value = System.DateTime.Now;
                command.Parameters.Add("@param7", SqlDbType.Int);
                command.Parameters["@param7"].Value = int.Parse(ddlCategoria.SelectedItem.Value);
                command.ExecuteNonQuery();
                conn.Close();
                int idO = getLastId();
                insertDetail(fileUpload(fuc1), idO);
                insertDetail(fileUpload(fuc2), idO);
                insertDetail(fileUpload(fuc3), idO);
                StatusLabel.Text = "Opera inserita correttamente!";

            }
            catch(Exception ex) {
                StatusLabel.Text = ex.ToString();
            }
        } else {
            StatusLabel.Text = "Seleziona una categoria.";
        }
        
    }

    protected int getLastId(){
        int id = -1;
        String query = "SELECT TOP 1 Id FROM Opera ORDER BY Id DESC";
        try
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                id = int.Parse(reader["Id"].ToString());
            }

        }
        catch { }
        return id;
    }

    protected void insertDetail(string path, int id)
    {
        String query = "INSERT INTO Dettaglio VALUES (@param1, @param2)";
        try
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.Add("@param1", SqlDbType.VarChar);
            command.Parameters["@param1"].Value = path;
            command.Parameters.Add("@param2", SqlDbType.Int);
            command.Parameters["@param2"].Value = id;
            command.ExecuteNonQuery();
        }
        catch { }
    }
 
}