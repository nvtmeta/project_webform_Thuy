using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace WebApplication7
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost\\SQLEXPRESS;Database=webform_fake;Trusted_Connection=True;TrustServerCertificate=true;";
            string sql = "SELECT ProductID, ProductName, Price FROM Products"; // Replace with your actual query
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);


                // Create a DataTable to store the results
                DataTable dataTable = new DataTable();
                dataTable.Load(command.ExecuteReader()); // Load data into DataTable

                // Bind the DataTable to the GridView
                ProductsGridView.DataSource = dataTable;
                ProductsGridView.DataBind();


                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    // Create a product card HTML string dynamically
                    string productId = reader["ProductID"].ToString();
                    string productName = reader["ProductName"].ToString();
                    string price = reader["Price"].ToString();

                    string productCardHtml = $@"
                    <div class='product-card'>
                        <img src='https://th.bing.com/th/id/OIP.uHaFvWfnfzdQT4sYoJZ-5AHaEo?rs=1&pid=ImgDetMain' alt='{productName}'>
                        <h3>{productName}</h3>
                        <p>${price}</p>
                    </div>";

                    // Add the product card HTML to a placeholder control or directly to the page
                    ProductsPlaceholder.Controls.Add(new LiteralControl(productCardHtml));
                }

                reader.Close();
            } // Make sure to close the SqlConnection block


        }
    }
}