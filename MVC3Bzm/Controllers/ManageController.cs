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
using MVC3Bzm.Models;

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
                IBzm iBzm = new BzmService();

                //把密码转为md5
                byte[] result = System.Text.Encoding.Default.GetBytes(InputUtil.ReplaceInput(pswd));
                MD5 md5 = new MD5CryptoServiceProvider();
                byte[] output = md5.ComputeHash(result);
                pswd = BitConverter.ToString(output).Replace("-", "");

                Admins admin = iBzm.GetAdminByNameAndPswd(InputUtil.ReplaceInput(name), pswd);
                
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
            IBzm iBzm = new BzmService();

            using (Bzm bzm = iBzm.BuildBzm())
            {
                //不使用延迟加载
                bzm.DeferredLoadingEnabled = false;

                var acces = (from a in bzm.BZMAccess orderby a.AcCDate descending select a).Skip(0).Take(70);

                List<BZMAccess> list = new List<BZMAccess>();

                foreach (BZMAccess a in acces)
                {
                    list.Add(a);
                }

                ViewBag.List = list;
            }

            return View();
        }


        /// <summary>
        /// 发表文章页面
        /// </summary>
        /// <returns></returns>
        [AuthFilter()]
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Post()
        {
            IBzm iBzm = new BzmService();

            using (Bzm bzm = iBzm.BuildBzm())
            {
                //不使用延迟加载
                bzm.DeferredLoadingEnabled = false;

                var tags = from t in bzm.BZMTag orderby t.ID descending select t;

                List<BZMTag> list = new List<BZMTag>();

                foreach (BZMTag t in tags)
                {
                    list.Add(t);
                }

                ViewBag.List = list;
            }

            return View();
        }


        /// <summary>
        /// 发表文章
        /// </summary>
        /// <returns></returns>
        [AuthFilter()]
        [LoggerFilter()]
        [ExceptionFilter()]
        [ValidateInput(false)]
        public ActionResult Posts()
        {
            IBzm iBzm = new BzmService();

            using (Bzm bzm = iBzm.BuildBzm())
            {
                //赋值
                Admins admin = (Admins)Session["usersd"];

                var article = new BZMArticle
                {
                    ArticleTitle = HttpUtility.HtmlEncode(Request.Form["Title"]),
                    ArticleTagID = Convert.ToInt32(HttpUtility.HtmlEncode(Request.Form["Tag"])),
                    ArticleContent = Request.Form["content"],
                    ArticleAdminID = admin.ID,
                    ArticleDate = DateTime.Now,
                };

                //添加
                bzm.BZMArticle.InsertOnSubmit(article);

                //提交
                bzm.SubmitChanges();
            }

            return RedirectToAction("Post", "Manage");
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


        /// <summary>
        /// 左侧导航
        /// </summary>
        /// <returns></returns>
        [AuthFilter()]
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Left()
        {
            return View();
        }

    }
}
