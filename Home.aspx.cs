using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace WebApplication7
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Thực hiện truy vấn SQL để lấy dữ liệu từ cơ sở dữ liệu
            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            string query = "SELECT id, name, price, sale, new, description, imageSrc, instock FROM Products where sale > 0";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataReader reader = command.ExecuteReader();
                int i = 1;
                // Tạo một danh sách chứa các đối tượng sản phẩm

                // Đọc dữ liệu từ SqlDataReader và thêm vào danh sách
                while (reader.Read())
                {
                    string id = reader["id"].ToString();
                    string name = reader["name"].ToString();
                    string price = reader["price"].ToString();
                    string sale = reader["sale"].ToString();
                    string isNew = reader["new"].ToString();
                    string description = reader["description"].ToString();
                    string imgSrc = "img/product" + i++ + ".jpg";

                    string html = $"<li>\r\n" +
                        $"<div class=\"product-item\">\r\n" +
                        $"<div class=\"product-top\">\r\n" +
                        $"\r\n<div class=\"home-product-item_sale-off ${sale}\">\r\n" +
                        $"<span class=\"home-product-item_sale-off-percent\">${sale}%</span>\r\n" +
                        $"<span class=\"home-product-item_sale-off-label\">SALE OFF</span>\r\n" +
                        $"<span class=\"home-product-item_sale-off-tail\"></span>\r\n" +
                        $"</div>\r\n" +
                        $"<div class=\"home-product-item_new ${isNew}\">\r\n" +
                        $"<span class=\"home-product-item_new\">NEW</span>\r\n" +
                        $"</div>\r\n" +
                        $"<a href=\"javascript:void(0)\" class=\"product-thumb\">\r\n" +
                        $"<img src=\"{imgSrc}\" alt=\"{name}\">\r\n" +
                        $"</a>\r\n" +
                        $"<a href=\"javascript:void(0)\" onclick=\"addToCart({id})\" class=\"buy-now\"><i class=\"fas fa-cart-plus\"></i></a>\r\n" +
                        $"</div>\r\n" +
                        $"<div class=\"product-infor\">\r\n" +
                        $"<a href=\"\" class=\"product-cat\">{description}</a>\r\n" +
                        $"<a href=\"\" class=\"product-name\">{name}</a>\r\n" +
                        $"<div class=\"product-price text-danger\">${price}</div>\r\n" +
                        $"</div>\r\n" +
                        $"</div>\r\n" +
                        $"</li>";
                    productRender.Controls.Add(new LiteralControl(html));
                }



            }


        }
    }
}