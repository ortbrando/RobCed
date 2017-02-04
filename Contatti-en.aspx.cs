using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contatti : System.Web.UI.Page
{
    String connectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            bindBack();
    }

    protected void bindBack()
    {
        String query = "SELECT * FROM Homepage";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(query, conn);

        try
        {           
            conn.Open();            
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            backgroundRepeater.DataSource = dt;
            backgroundRepeater.DataBind();
        }
        catch { }
        finally
        {
            command.Dispose();
            conn.Close();
        }
    }
    protected void btnContatta_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrWhiteSpace(txbEmail.Text) || String.IsNullOrWhiteSpace(txbNome.Text) || String.IsNullOrWhiteSpace(txbTesto.Text))
        {
            lblout.Text = "In order to contact me, you must fill every textbox.";
        }
        else
        {
            SmtpClient smtpClient = new SmtpClient("smtp.aruba.it", 25);
            smtpClient.Credentials = new System.Net.NetworkCredential("info@robertocedioli.com", "cediolirob79");
            smtpClient.UseDefaultCredentials = true;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            MailMessage mail = new MailMessage();
            mail.Body = "Nome: " + txbNome.Text + "\nE-Mail: " + txbEmail.Text + "\nMessaggio: \n" + txbTesto.Text;
            mail.Subject = "Contatto da robertocedioli.com";
            //Setting From , To and CC
            mail.From = new MailAddress("info@robertocedioli.com", "" + txbNome.Text + " - " + txbEmail.Text);
            mail.To.Add(new MailAddress("info@robertocedioli.com"));
            mail.CC.Add(new MailAddress("brando.mordenti@gmail.com"));
            smtpClient.Send(mail);
            lblout.Text = "Thanks ";
            emoji.Visible = true;
        }
    }
}