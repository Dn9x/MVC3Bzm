using MVC3Bzm.Models;
using MVC3Bzm.Models.InterFaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC3Bzm.Models.Util;
using MVC3Bzm.Models.Entity;
using System.Data;
using MVC3Bzm.Models.InterFaces;
using MVC3Bzm.Models.Entity;
using MVC3Bzm.Controllers.Filters;
using Tree.MvcTree.Models;
using MVC3Bzm.Models.Services;

namespace MVC3Bzm.Controllers
{
    public class HomeController : Controller
    {
        /// <summary>
        /// 首页
        /// </summary>
        /// <returns></returns>
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Index()
        {
            IBzm iBzm = new BzmService();

            using (Bzm bzm = iBzm.BuildBzm())
            {
                //使用延迟加载
                bzm.DeferredLoadingEnabled = true;

                var artiles = (from a in bzm.BZMArticle orderby a.ArticleDate descending select a).Skip(0).Take(10);

                List<BZMArticle> list = new List<BZMArticle>();

                foreach (BZMArticle a in artiles)
                {
                    list.Add(a);
                }

                ViewBag.List = list;
            }

            return View();
        }

        /// <summary>
        /// 文章详情
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Detail(int id)
        {
            IBzm iBzm = new BzmService();

            using (Bzm bzm = iBzm.BuildBzm())
            {
                //使用延迟加载
                bzm.DeferredLoadingEnabled = true;

                var artiles = from a in bzm.BZMArticle where a.ID == id select a;

                List<BZMArticle> list = new List<BZMArticle>();

                foreach (BZMArticle a in artiles)
                {
                    list.Add(a);
                }

                ViewBag.List = list;
            }

            return View();
        }

        /// <summary>
        /// 下一页
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult NextPage(string id)
        {
            IBzm iBzm = new BzmService();

            string json = "";       //返回值

            using (Bzm bzm = iBzm.BuildBzm())
            {
                //使用延迟加载
                bzm.DeferredLoadingEnabled = true;

                var artiles = (from a in bzm.BZMArticle orderby a.ArticleDate descending select a).Skip(Convert.ToInt32(HttpUtility.HtmlEncode(id))).Take(10);

                List<Articles> list = new List<Articles>();

                foreach (BZMArticle a in artiles)
                {
                    Articles art = new Articles();

                    art.ID = a.ID;
                    art.Title = a.ArticleTitle;
                    art.Content = a.ArticleContent;
                    art.Date = a.ArticleDate+"";
                    art.Access = a.ArticleAccess;
                    art.AdminId = a.ArticleAdminID;
                    art.AdminName = a.BZMAdMIn.AdminName;
                    art.TagId = a.ArticleTagID;
                    art.TagName = a.BZMTag.TagName;

                    list.Add(art);
                }

                json = JsonUtil.ListToJson(list);
            }

            return Content(json);
        }

        /// <summary>
        /// 添加评论
        /// </summary>
        /// <returns></returns>
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Comments(string title, string name, string content)
        {
            string result = "";

            if (name.Length > 0 && content.Length > 0)
            {
                IBzm iBzm = new BzmService();

                using (Bzm bzm = iBzm.BuildBzm())
                {
                    //赋值
                    BZMComment comment = new BZMComment
                    {
                        CommArticleID = Convert.ToInt32(HttpUtility.HtmlEncode(title)),
                        CommUser = HttpUtility.HtmlEncode(name),
                        CommContent = HttpUtility.HtmlEncode(content),
                        CommDate = DateTime.Now,
                    };

                    bzm.BZMComment.InsertOnSubmit(comment);

                    bzm.SubmitChanges();

                    var comm = from c in bzm.BZMComment orderby c.CommDate descending select c;

                    List<Comments> list = new List<Comments>();

                    foreach (BZMComment c in comm)
                    {
                        Comments com = new Comments();

                        com.ID = c.ID;
                        com.User = c.CommUser;
                        com.Content = c.CommContent;
                        com.Date = c.CommDate+"";

                        list.Add(com);
                    }

                    result = JsonUtil.ListToJson1(list);
                }
            }

            return Content(result);
        }

        /// <summary>
        /// 关于站长
        /// </summary>
        /// <returns></returns>
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult About()
        {
            return View();
        }

        /// <summary>
        /// Tags
        /// </summary>
        /// <returns></returns>
        [LoggerFilter()]
        [ExceptionFilter()]
        public ActionResult Tags() 
        {
            IBzm iBzm = new BzmService();

            //得到评论列表
            List<TreeData> result = iBzm.TreeList();

            ViewBag.List = result;

            return View();
        }


        /// <summary>
        /// Feed新闻Rss
        /// </summary>
        /// <returns></returns>
        public ContentResult Feed()
        {
            IBzm iBzm = new BzmService();

            string reslt = "";

            using (Bzm bzm = iBzm.BuildBzm())
            {
                //使用延迟加载
                bzm.DeferredLoadingEnabled = true;

                var artiles = (from a in bzm.BZMArticle orderby a.ArticleDate descending select a).Skip(0).Take(10);

                List<Articles> list = new List<Articles>();

                foreach (BZMArticle a in artiles)
                {
                    Articles art = new Articles();

                    art.ID = a.ID;
                    art.Title = a.ArticleTitle;
                    art.Content = a.ArticleContent;
                    art.Date = a.ArticleDate + "";
                    art.Access = a.ArticleAccess;
                    art.AdminId = a.ArticleAdminID;
                    art.AdminName = a.BZMAdMIn.AdminName;
                    art.TagId = a.ArticleTagID;
                    art.TagName = a.BZMTag.TagName;
                    art.CommCount = a.BZMComment.Count();

                    list.Add(art);
                }

                reslt = new PubUtil().Rss(list);
            }

            return Content(reslt, "text/xml");
        }

    }
}
