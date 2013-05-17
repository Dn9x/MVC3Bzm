using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC3Bzm.Models.Entity;
using MVC3Bzm.Models;
using MVC3Bzm.Models.InterFaces;
using System.Text.RegularExpressions;
using MVC3Bzm.Models.Services;

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

            IBzm iBzm = new BzmService();

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
                    using (Bzm bzm = iBzm.BuildBzm())
                    {
                        int id = Convert.ToInt32(parms);

                        var art = bzm.BZMArticle.SingleOrDefault<BZMArticle>(a => a.ID == id);

                        //修改文章的属性
                        art.ArticleAccess = art.ArticleAccess + 1;
                        art.ArticleDate = art.ArticleDate;

                        bzm.SubmitChanges();
                    }
                }
            }

            //浏览器
            string brow = brow1 + brow2 + " " + brow3;

            using (Bzm bzm = iBzm.BuildBzm())
            {
                //赋值
                var acces = new BZMAccess()
                {
                    AcCURL = filterContext.HttpContext.Request.Url.AbsoluteUri,       //用户请求的URL
                    AcCIP = filterContext.HttpContext.Request.UserHostAddress,        //用户的IP
                    AcCDNS = filterContext.HttpContext.Request.UserHostName,          //用户的DNS
                    AcCBrowser = brow,      //用户的浏览器信息
                    AcCDate = DateTime.Now,
                };

                //添加
                bzm.BZMAccess.InsertOnSubmit(acces);

                //提交
                bzm.SubmitChanges();
            }
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