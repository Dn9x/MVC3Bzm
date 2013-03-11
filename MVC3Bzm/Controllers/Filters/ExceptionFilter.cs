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
            Exception ex = filterContext.HttpContext.Server.GetLastError();

            string UsingServer = filterContext.HttpContext.Request.Url.AbsoluteUri;

            StringBuilder mailStr = new StringBuilder();

            if (ex != null)
            {
                try
                {
                    mailStr.Append("<style type=\"text/css\">");
                    mailStr.Append("body,table,td{font-size:8pt;font-family:verdana;}");
                    mailStr.Append("body{background-color:#e5e5e5;text-align:center;margin-top:20px}");
                    mailStr.Append("</style>");
                    mailStr.Append("<table width=90% cellspacing=0 cellpadding=2 style=\"border:1px solid white\">");

                    HttpException hex = ex as HttpException;

                    if (hex != null)
                    {
                        mailStr.Append("<tr><td style=\"background-color:#7a8485;color:white;font-weight:bold\">錯誤頁面:</td></tr><tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\">");
                        mailStr.Append(hex.GetHtmlErrorMessage() + "</td></tr>");
                    }
                    mailStr.Append("<tr><td style=\"background-color:#7a8485;color:white;font-weight:bold\">錯誤訊息如下﹕</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>操作發生錯誤的使用者:</b><br>" + filterContext.HttpContext.Request.UserHostAddress + "</td></tr>");
                    //mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>操作發生錯誤的使用者:</b><br>" + userName + "(" + userId + ")" + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>*目前操作的主機:</b><br>" + UsingServer + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>Message:</b><br>" + ex.Message + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>Source:</b><br>" + ex.Source + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>Stack Trace:</b><br>" + ex.StackTrace + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>Target Site:</b><br>" + ex.TargetSite.ToString() + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>錯誤時間:</b><br>" + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString() + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>請求路徑:</b><br>" + filterContext.HttpContext.Request.Path + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>服務器名稱:</b><br>" + filterContext.HttpContext.Server.MachineName + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>請求IP:</b><br>" + filterContext.HttpContext.Request.UserHostAddress + "(" + filterContext.HttpContext.Request.UserHostName + ")</td></tr>");
                    //mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>請求:</b><br>" + DefaultAuthenticate.GetRequestStr(Request)  + "</td></tr>");
                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>瀏覽器資訊:</b><br>");
                    System.Web.HttpBrowserCapabilitiesBase bc = filterContext.HttpContext.Request.Browser;
                    mailStr.Append("Type = " + bc.Type + "<br>");
                    mailStr.Append("Name = " + bc.Browser + "<br>");
                    mailStr.Append("Version = " + bc.Version + "<br>");
                    mailStr.Append("Major Version = " + bc.MajorVersion + "<br>");
                    mailStr.Append("Minor Version = " + bc.MinorVersion + "<br>");
                    mailStr.Append("Platform = " + bc.Platform + "<br>");
                    mailStr.Append("Is Beta = " + bc.Beta + "<br>");
                    mailStr.Append("Is Crawler = " + bc.Crawler + "<br>");
                    mailStr.Append("Is AOL = " + bc.AOL + "<br>");
                    mailStr.Append("Is Win16 = " + bc.Win16 + "<br>");
                    mailStr.Append("Is Win32 = " + bc.Win32 + "<br>");
                    mailStr.Append("Supports Frames = " + bc.Frames + "<br>");
                    mailStr.Append("Supports Tables = " + bc.Tables + "<br>");
                    mailStr.Append("Supports Cookies = " + bc.Cookies + "<br>");
                    mailStr.Append("Supports VB Script = " + bc.VBScript + "<br>");
                    mailStr.Append("Supports JavaScript = " + bc.JScriptVersion + "<br>");
                    mailStr.Append("Supports Java Applets = " + bc.JavaApplets + "<br>");
                    mailStr.Append("Supports ActiveX Controls = " + bc.ActiveXControls + "<br>");
                    mailStr.Append("CDF = " + bc.CDF + "<br></td></tr>");

                    mailStr.Append("<tr><td style=\"background-color:#ffffcc;color:black;font-weight:normal\"><b>服務器資訊:</b><br>");
                    int loop1, loop2;
                    NameValueCollection coll;

                    coll = filterContext.HttpContext.Request.ServerVariables;
                    String[] arr1 = coll.AllKeys;
                    for (loop1 = 0; loop1 < arr1.Length; loop1++)
                    {
                        mailStr.Append("Key: " + arr1[loop1] + "<br>");
                        String[] arr2 = coll.GetValues(arr1[loop1]);
                        for (loop2 = 0; loop2 < arr2.Length; loop2++)
                        {
                            mailStr.Append("Value " + loop2 + ": " + arr2[loop2] + "<br>");
                        }
                    }
                    mailStr.Append("</td></tr>");


                    mailStr.Append("</table>");
                }
                catch (Exception eeex)
                {
                    mailStr.Append("<br>處理錯誤訊息時發生錯誤:" + eeex.Message.ToString());
                    mailStr.Append("<br>*目前操作中的主機:" + UsingServer);
                }
            }
            else
            {
                mailStr.Append(String.Format("*目前操作中的主機：{0}取不到錯誤資訊。", UsingServer));
            }

            Errors error = new Errors(){
                Error = mailStr + ""
            };

            IErrors eSer = ServiceBuilder.BuildErrorService();

            eSer.InsertErrors(error);
        }

    }
}