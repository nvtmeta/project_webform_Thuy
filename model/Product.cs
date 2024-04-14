using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication7.model
{
    public class Product
    {
        public int Id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string imageUrl { get; set; }
        public string price { get; set; }
    }
}