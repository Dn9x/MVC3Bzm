﻿using Mvc3Demo3.Models;
using Mvc3Demo3.Models.InterFaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC3Bzm.Models.Util;
using Mvc3Demo3.Models.Entity;
using System.Data;
using MVC3Bzm.Models.InterFaces;
using MVC3Bzm.Models.Entity;

namespace Mvc3Demo3.Controllers
{
    public class HomeController : Controller
    {
        /// <summary>
        /// 首页
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            //创建对象
            IArticle iArt = ServiceBuilder.BuildArticleService();

            ViewData["Articles"] = iArt.SelectArticles("0", "10");

            return View();
        }

        /// <summary>
        /// 文章详情
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Detail(string id)
        {
            //创建对象
            IArticle iArt = ServiceBuilder.BuildArticleService();

            ViewData["Article"] = iArt.SelectArticleById(id);

            IComment iComm = ServiceBuilder.BuildCommentService();

            ViewData["Comments"] = iComm.SelectCommentsByArticleId(id);

            return View();
        }

        /// <summary>
        /// 下一页
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult NextPage(string id)
        {
            //创建对象
            IArticle iArt = ServiceBuilder.BuildArticleService();

            string json = JsonUtil.ListToJson(iArt.SelectArticles(id, "10"));

            return Content(json);
        }

        /// <summary>
        /// 添加评论
        /// </summary>
        /// <returns></returns>
        public ActionResult Comments(string title, string name, string content)
        {
            Comments comment = new Comments
            {
                ArticleId = Convert.ToInt32(title),
                User = name,
                Content = content,
            };

            IComment iComm = ServiceBuilder.BuildCommentService();

            //得到结果
            string result = iComm.InsertComment(comment);

            //得到评论列表
            List<Comments> list = iComm.SelectCommentsByArticleId(title);

            result = JsonUtil.ListToJson(list);

            return Content(result);
        }


        public ActionResult About()
        {
            return View();
        }

    }
}
