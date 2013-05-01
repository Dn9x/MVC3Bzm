using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text;
using System.Collections.Specialized;
using MVC3Bzm.Models.InterFaces;
using Mvc3Demo3.Models;
using MVC3Bzm.Models.Entity;

namespace MVC3Bzm.Controllers.Filters
{
    public class ExceptionFilter : FilterAttribute, IExceptionFilter
    {
        /// <summary>
        /// 只有在filter,或者 action method, 或者 action result 抛出一个异常时候执行
        /// </summary>
        /// <param name="filterContext"></param>
        public void OnException(ExceptionContext filterContext)
        {
            //获取异常类
            Exception ex = filterContext.Exception;

            var error = new Errors(){
                Error = filterContext.HttpContext.Request.Url.AbsoluteUri + ":" + ex.Message
            };

            IErrors eSer = ServiceBuilder.BuildErrorService();

            eSer.InsertErrors(error);

            //把数据传到错误页面上面
            filterContext.Controller.ViewData["ErrorMsg"] = filterContext.Exception.Message;

            //设置页面跳转
            filterContext.Result = new ViewResult() {
                ViewName = "Error",
                ViewData = filterContext.Controller.ViewData
            };

            //告诉系统异常已经处理好了
            filterContext.ExceptionHandled = true;
        }

    }
}