using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class Hardware : System.Web.UI.Page
{

    String connectionString = ConfigurationManager.ConnectionStrings["InformaticaMiConnectionString"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
		 var keywords = new HtmlMeta { Name = "keywords", Content = "assistenza,vendita,computer,smartphone,accessori,riparazioni,connettività,networking,servizi a domicilio,corsi specializzati,assemblaggio pc,gaming,notebook,tastiere gaming, mouse gaming,rimozione virus,componenti,malware,mobile,cellulari,riparazione cellulare,videogiochi" };
        Header.Controls.Add(keywords);
    }

   
    
}