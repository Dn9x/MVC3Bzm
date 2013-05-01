using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC3Bzm.Models.Entity;

namespace MVC3Bzm.Controllers.Filters
{
    public class AuthFilter : FilterAttribute, IAuthorizationFilter
    {
        //
        // GET: /AuthFilter/

        public void OnAuthorization(AuthorizationContext filterContext)
        {
            //获取session
            Admins admin = (Admins)filterContext.HttpContext.Session["usersd"];

            if (admin == null) 
            {
                //设置页面跳转
                filterContext.Result = new ViewResult()
                {
                    ViewName = "Login"
                };
            }

        }
    }
}
