using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC3Bzm.Models.Entity;
using Mvc3Demo3.Models;
using Mvc3Demo3.Models.InterFaces;
using System.Text.RegularExpressions;

namespace MVC3Bzm.Controllers.Filters
{
    public class LoggerFilter : FilterAttribute, IActionFilter
    {
        /// <summary>
        /// 所有Action在执行之后执行
        /// </summary>
        /// <param name="filterContext"></param>
        public void OnActionExecuted(ActionExecutedContext filterContext)
        {
            string brow1 = filterContext.HttpContext.Request.Browser.Browser;
            string brow2 = filterContext.HttpContext.Request.Browser.Version;
            string brow3 = filterContext.HttpContext.Request.Browser.Type;

            //获取acton名称
            string action = filterContext.ActionDescriptor.ActionName;

            //获取controll名称
            string contro = filterContext.ActionDescriptor.ControllerDescriptor.ControllerName;

            //判断是否是访问文章详情
            if (contro == "Home" && action == "Detail")
            {
                //获取url
                string parms = filterContext.HttpContext.Request.Url.ToString();

                //获取参数
                parms = parms.Substring(parms.IndexOf("Detail/") + 7, parms.Length - parms.IndexOf("Detail/") - 7);

                //正则验证数字
                Regex r = new Regex(@"^[0-9]+$");

                if(r.Match(parms).Success)
                {
                    //创建对象
                    IArticle iArt = ServiceBuilder.BuildArticleService();

                    iArt.UpdateAccess(parms);
                }
            }

            //浏览器
            string brow = brow1 + brow2 + " " + brow3;

            Access access = new Access()
            {
                Url = filterContext.HttpContext.Request.Url.AbsoluteUri,       //用户请求的URL
                Ip = filterContext.HttpContext.Request.UserHostAddress,        //用户的IP
                Dns = filterContext.HttpContext.Request.UserHostName,          //用户的DNS
                Browser = brow      //用户的浏览器信息
            };

            //创建服务
            var acSer = ServiceBuilder.BuildAccessService();

            //添加访问信息
            acSer.InsertAccess(access);
        }

        /// <summary>
        /// 所有Action在执行之前执行
        /// </summary>
        /// <param name="filterContext"></param>
        public void OnActionExecuting(ActionExecutingContext filterContext)
        {
        }
    }
}