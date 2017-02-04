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

public partial class Services_ModificaHomepage : System.Web.UI.Page
{
    String connectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ToString();
    string sfondo = null;
    string path = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getDescription();
        }
        
    }

    protected void getDescription()
    {
        String query = "SELECT Filosofia FROM Homepage";
		SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(query, conn);

        try
        {
            conn.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                tbFilosofia.Text = reader["Filosofia"].ToString();
            }
        }
        catch (Exception ex) { }
		finally {
			command.Dispose();
			conn.Close();
		}

    }

    protected void Modifica_Click(object sender, EventArgs e)
    {
        if (FileUploadControl.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(FileUploadControl.FileName);
                path = "/img/homepage/" + filename;
                sfondo = Server.MapPath("~/img/homepage/" + filename);
                FileUploadControl.SaveAs(sfondo);
            }
            catch (Exception ex1)
            {
                StatusLabel.Text = "Errore nell'upload";
            }
        }

        if (sfondo != null && path != null)
        {
			String query = "UPDATE Homepage SET Sfondo = @param1, Filosofia = @param2";
			SqlConnection conn = new SqlConnection(connectionString);
			SqlCommand command = new SqlCommand(query, conn);


            try
            {
                conn.Open();
                command.Parameters.Add("@param1", SqlDbType.VarChar);
                command.Parameters["@param1"].Value = path;
                command.Parameters.Add("@param2", SqlDbType.VarChar);
                command.Parameters["@param2"].Value = tbFilosofia.Text;
                command.ExecuteNonQuery();
                StatusLabel.Text = "Homepage modificata correttamente!";
            }
            catch (Exception ex) { }
			finally {
				command.Dispose();
				conn.Close();
			}
        }
        else
        {
            StatusLabel.Text = "Selezionare un immagine";
        }
        
    }
 
}