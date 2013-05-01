using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC3Bzm.Models.InterFaces;
using MVC3Bzm.Models.Services;
using MVC3Bzm.Models.Entity;
using MVC3Bzm.Models.Util;
using MVC3Bzm.Controllers.Filters;
using System.Security.Cryptography;

namespace MVC3Bzm.Controllers
{
    public class ManageController : Controller
    {
        //
        // GET: /Manage/

        /// <summary>
        /// 首页
        /// </summary>
        /// <returns></returns>
        [AuthFilter()]
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Index()
        {
            return View("Index");
        }


        /// <summary>
        /// 登录
        /// </summary>
        /// <returns></returns>
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Login()
        {
            string name = HttpUtility.HtmlEncode(Request.Form["username"]);
            string pswd = HttpUtility.HtmlEncode(Request.Form["userpswd"]);

            if (name == null || pswd == null)
            {
                return View();
            }
            else
            {
                IAdmin iad = new AdminService();

                //把密码转为md5
                byte[] result = System.Text.Encoding.Default.GetBytes(InputUtil.ReplaceInput(pswd));
                MD5 md5 = new MD5CryptoServiceProvider();
                byte[] output = md5.ComputeHash(result);
                pswd = BitConverter.ToString(output).Replace("-", "");

                Admins admin = iad.GetAdminByNameAndPswd(InputUtil.ReplaceInput(name), pswd);
                
                if (admin != null)
                {
                    Session.Add("usersd", admin);       //设置session
                    Session.Timeout = 60;               //设置过期时间

                    return RedirectToAction("Index", "Manage");
                }
                else
                {
                    return View();
                }
            }
        }


        /// <summary>
        /// 浏览记录
        /// </summary>
        /// <returns></returns>
        [AuthFilter()]
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Notes()
        {
            return View();
        }


        /// <summary>
        /// 发表文章
        /// </summary>
        /// <returns></returns>
        [AuthFilter()]
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Post()
        {
            return View();
        }


        /// <summary>
        /// 登出
        /// </summary>
        /// <returns></returns>
        [AuthFilter()]
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult LoginOut()
        {
            Session.RemoveAll();       //清空session

            return RedirectToAction("Login", "Manage");
        }

    }
}
