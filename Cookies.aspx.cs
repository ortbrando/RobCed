﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookies : System.Web.UI.Page
{
    String connectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            bindHomepage();
    }
    protected void bindHomepage()
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
}