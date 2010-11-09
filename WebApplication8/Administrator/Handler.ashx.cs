using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication8.Administrator
{
    /// <summary>
    /// Сводное описание для Handler
    /// </summary>
    public class Handler : IHttpHandler
    {
                    String _name,_body;

        public void ProcessRequest(HttpContext context)
        {



            String ID = Convert.ToString(context.Request.QueryString["ID"]);
                    
                    
                   // Convert.ToString(context.Request.QueryString["ID"]);
            

                
        }

        public String Body
        {
            get { return _body; }
        
        }

        public String Name
        {
            get { return _name; }
        
        }




        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}