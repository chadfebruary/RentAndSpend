using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_RentItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = generateRentalNumber();
    }

    public string generateRentalNumber()
    {
        int minimum = 100000;
        int maximum = 1000000;
        Random random = new Random();
        int rentalNumber = random.Next(minimum, maximum);
        return "Rent" + rentalNumber.ToString();
    }

    public string generateReturnNumber()
    {
        int minimum = 100000;
        int maximum = 1000000;
        Random random = new Random();
        int rentalNumber = random.Next(minimum, maximum);
        return "Return" + rentalNumber.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String rentalNumber = Label1.Text;
        String name = TextBox1.Text;
        String surname = TextBox2.Text;
        String phoneNumber = TextBox3.Text;
        String address = TextBox4.Text;
        String city = TextBox5.Text;
        String province = DropDownList1.SelectedValue;
        String postCode = TextBox6.Text;
        String rentDate = Calendar1.SelectedDate.ToShortDateString();
        String returnDate = Calendar2.SelectedDate.ToShortDateString();

        SqlConnection connection = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\CPUT\IRP300S\June projects\RentAndSpend\App_Data\ASPNETDB.MDF;Integrated Security=True;User Instance=True");
        SqlCommand insertRentalDetails = new SqlCommand("INSERT into RentingDetails(RentalNumber, RequestDate, ReturnDate, CustomerID) VALUES(@RentalNumber, @RequestDate, @ReturnDate, @CustomerID)");
        SqlCommand insertReturnDetails = new SqlCommand("INSERT into ReturnDetails(ReturnNumber, RentalNumber, DueDate, DateReturned, ProductID) VALUES (@ReturnNumber, @RentalNumber, @DueDate, @DateReturned, @ProductID)");

        insertRentalDetails.CommandType = CommandType.Text;
        insertRentalDetails.Connection = connection;

        insertReturnDetails.CommandType = CommandType.Text;
        insertReturnDetails.Connection = connection;

        insertRentalDetails.Parameters.AddWithValue("@RentalNumber", rentalNumber);
        insertRentalDetails.Parameters.AddWithValue("@RequestDate", rentDate);
        insertRentalDetails.Parameters.AddWithValue("@ReturnDate", returnDate);
        insertRentalDetails.Parameters.AddWithValue("@CustomerID", name);

        String returnNumber = generateReturnNumber();
        insertReturnDetails.Parameters.AddWithValue("@ReturnNumber", returnNumber);
        insertReturnDetails.Parameters.AddWithValue("@RentalNumber", rentalNumber);
        insertReturnDetails.Parameters.AddWithValue("@DueDate", returnDate);
        insertReturnDetails.Parameters.AddWithValue("@DateReturned", false);
        insertReturnDetails.Parameters.AddWithValue("@ProductID", 1234);

        connection.Open();
        insertRentalDetails.ExecuteNonQuery();
        insertReturnDetails.ExecuteNonQuery();
        connection.Close();
    }
}