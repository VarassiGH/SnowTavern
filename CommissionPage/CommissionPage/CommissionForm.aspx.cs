using System.Data.SqlClient;
using System.Web.UI;
using System;

public partial class index : Page
{
    // Removed duplicate Page_Load method to resolve CS0111 error  
    protected void Page_Load(object sender, EventArgs e)
    {
        // Existing logic for Page_Load can remain here  
    }

    protected void SubmitForm(object sender, EventArgs e)
    {
        string fullName = Request.Form["name"];
        string email = Request.Form["email"];
        string explanation = Request.Form["explanation"];
        string options = Request.Form["options"];

        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CommissionDB"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "INSERT INTO Commissions (FullName, Email, Explanation, Options) VALUES (@FullName, @Email, @Explanation, @Options)";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@FullName", fullName);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Explanation", explanation);
                command.Parameters.AddWithValue("@Options", options);

                connection.Open();
                command.ExecuteNonQuery();
            }
        }

        // Redirect or show a success message  
        Response.Redirect("ThankYou.aspx");
    }
}