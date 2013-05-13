using MVC3Bzm.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace MVC3Bzm.Models.InterFaces
{
    public interface IArticle
    {

        /// <summary>
        /// 添加文章
        /// </summary>
        /// <param name="article"></param>
        /// <returns></returns>
        string InsertArticle(Articles article);


        /// <summary>
        /// 修改文章
        /// </summary>
        /// <param name="article"></param>
        /// <returns></returns>
        int UpdateArticle(Articles article);


        /// <summary>
        /// 删除文章
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        int DeleteArticleById(int id);


        /// <summary>
        /// 根据ID查询文章
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Articles SelectArticleById(string id);


        /// <summary>
        /// 查询文章列表
        /// </summary>
        /// <param name="minPage"></param>
        /// <param name="maxPage"></param>
        /// <returns></returns>
        List<Articles> SelectArticles(string minPage, string maxPage);

        /// <summary>
        /// 查询文章列表通过TagId
        /// </summary>
        /// <param name="minPage"></param>
        /// <param name="maxPage"></param>
        /// <returns></returns>
        List<Articles> SelectArticlesByTagId(string tagId);


        /// <summary>
        /// 查询文章列表
        /// </summary>
        /// <param name="minPage"></param>
        /// <param name="maxPage"></param>
        /// <returns></returns>
        DataTable SelectArticles2(string minPage, string maxPage);


        /// <summary>
        /// 修改文章的访问量
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        string UpdateAccess(string id);


    }
}