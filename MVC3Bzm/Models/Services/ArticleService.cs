using Mvc3Demo3.Models.InterFaces;
using Mvc3Demo3.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using Mvc3Demo3.Models.Util;
using System.Configuration;

namespace Mvc3Demo3.Models.Services
{
    public class ArticleService : IArticle
    {
        #region IArticle 成员
        
        public string InsertArticle(Entity.Articles article)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            string sql = String.Format("insert bzm_article(article_title, article_content, article_date, article_tagid, article_access, article_adminid) value('{0}', '{1}', sysdate(), {2}, 1, {3})", article.Title, article.Content, article.TagId, article.AdminId);
            
            string result = MySqlUtil.ExecuteSql(connStr, sql);

            return result;
        }

        public int UpdateArticle(Entity.Articles article)
        {
            return 1;
        }

        public int DeleteArticleById(int id)
        {
            return 1;
        }

        public Articles SelectArticleById(string id)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            MySqlConnection conn = new MySqlConnection(connStr);

            conn.Open();

            string sql = String.Format("select r.id as rid, r.article_title as title, r.article_Content as content, r.article_Date as date, r.article_access as access, t.tag_Name as tag, t.id as tid, u.admin_Name as uname, u.admin_Head as uhead, u.id as uid from bzm_article r, bzm_admin u, bzm_tag t where r.article_AdminId=u.id and r.article_TagId=t.id and r.id={0}", id);

            MySqlCommand cmd = new MySqlCommand(sql, conn);

            MySqlDataReader dr = cmd.ExecuteReader();

            Articles arts = null;

            if (dr.Read())
            {
                arts = new Articles();

                arts.ID = dr.GetInt32(0);
                arts.Title = dr.GetString(1);
                arts.Content = dr.GetString(2);
                arts.Date = dr.GetDateTime(3);
                arts.Access = dr.GetInt32(4);
                arts.TagName = dr.GetString(5);
                arts.TagId = dr.GetInt32(6);
                arts.AdminName = dr.GetString(7);
            }

            dr.Close();

            conn.Close();

            return arts;
        }

        public List<Articles> SelectArticles(string minPage, string maxPage)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            List<Articles> list = new List<Articles>();

            MySqlConnection conn = new MySqlConnection(connStr);

            conn.Open();

            string sql = String.Format("select r.id as rid, r.article_title as title, r.article_Content as content, r.article_Date as date, r.article_access as access, t.tag_Name as tag, t.id as tid, u.admin_Name as uname, u.admin_Head as uhead, u.id as uid from bzm_article r, bzm_admin u, bzm_tag t where r.article_AdminId=u.id and r.article_TagId=t.id order by r.article_Date desc limit {0}, {1}", minPage, maxPage);

            MySqlCommand cmd = new MySqlCommand(sql, conn);

            MySqlDataReader dr = cmd.ExecuteReader();

            Articles arts = null;

            while (dr.Read())
            {
                arts = new Articles();

                arts.ID = dr.GetInt32(0);
                arts.Title = dr.GetString(1);
                arts.Content = dr.GetString(2);
                arts.Date = dr.GetDateTime(3);
                arts.Access = dr.GetInt32(4);
                arts.TagName = dr.GetString(5);
                arts.TagId = dr.GetInt32(6);
                arts.AdminName = dr.GetString(7);

                list.Add(arts);
            }

            dr.Close();

            conn.Close();

            return list;
        }


        public DataTable SelectArticles2(string minPage, string maxPage)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            string sql = String.Format("select r.id as rid, r.article_title as title, r.article_Content as content, r.article_Date as date, r.article_access as access, t.tag_Name as tag, t.id as tid, u.admin_Name as uname, u.admin_Head as uhead, u.id as uid from bzm_article r, bzm_admin u, bzm_tag t where r.article_AdminId=u.id and r.article_TagId=t.id order by r.article_Date desc limit {0}, {1}", minPage, maxPage);

            DataTable dt = MySqlUtil.ExecuteDataset(connStr, CommandType.Text, sql).Tables[0];

            return dt;
        }


        public List<Articles> SelectArticlesByTagId(string tagId)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            MySqlConnection conn = new MySqlConnection(connStr);

            conn.Open();

            string sql = String.Format("select id, article_title, article_date, article_tagId from bzm_article where article_tagid={0}", tagId);

            MySqlCommand cmd = new MySqlCommand(sql, conn);

            MySqlDataReader dr = cmd.ExecuteReader();

            List<Articles> list = new List<Articles>();;

            while (dr.Read())
            {
                Articles arts = new Articles();

                arts.ID = dr.GetInt32(0);
                arts.Title = dr.GetString(1);
                arts.Date = dr.GetDateTime(2);
                arts.TagId = dr.GetInt32(3);

                list.Add(arts);
            }

            dr.Close();

            conn.Close();

            return list;
        }

        public string UpdateAccess(string id)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            string sql = String.Format("update bzm_article set article_access = article_access+1, article_Date=article_Date where id={0}", id);

            string result = MySqlUtil.ExecuteSql(connStr, sql);

            return result;
        }


        #endregion

    }
}