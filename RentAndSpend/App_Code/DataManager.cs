using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataManager
/// </summary>
public class DataManager
{
    SqlConnection connection = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Chad\Documents\Visual Studio 2010\WebSites\RentAndSpend\App_Data\ASPNETDB.MDF;Integrated Security=True;User Instance=True");
    SqlCommand command;
    SqlDataReader reader;

	public DataManager()
	{
	}

    public SqlDataReader populateProvinces()
    {
        command = new SqlCommand("select * from provinces");
        command.CommandType = CommandType.Text;
        command.Connection = connection;

        connection.Open();
        reader = command.ExecuteReader();

        return reader;
    }
}
