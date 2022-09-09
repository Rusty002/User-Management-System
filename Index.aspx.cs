using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetPersons(string username, string password)
        {
            Index index = new Index();
            if(Session["PersonList"] == null)
            {
                index.CreateAdmin();
            }


            return "success";
        }

        public void CreateAdmin()
        {
        }
    }
}