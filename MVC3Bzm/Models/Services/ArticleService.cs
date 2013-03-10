using Mvc3Demo3.Models.InterFaces;
using Mvc3Demo3.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using Mvc3Demo3.Models.Util;

namespace Mvc3Demo3.Models.Services
{
    public class ArticleService : IArticle
    {
        public int InsertArticle(Entity.Articles article)
        {
            return 1;
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
            string connStr = "Database=biezuomeng;Data Source=localhost;User Id=root;Password=1234;pooling=true;CharSet=utf8;port=3306";

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
            string connStr = "Database=biezuomeng;Data Source=localhost;User Id=root;Password=1234;pooling=true;CharSet=utf8;port=3306";

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
            string connStr = "Database=biezuomeng;Data Source=localhost;User Id=root;Password=1234;pooling=true;CharSet=utf8;port=3306";

            string sql = String.Format("select r.id as rid, r.article_title as title, r.article_Content as content, r.article_Date as date, r.article_access as access, t.tag_Name as tag, t.id as tid, u.admin_Name as uname, u.admin_Head as uhead, u.id as uid from bzm_article r, bzm_admin u, bzm_tag t where r.article_AdminId=u.id and r.article_TagId=t.id order by r.article_Date desc limit {0}, {1}", minPage, maxPage);

            DataTable dt = MySqlUtil.ExecuteDataset(connStr, CommandType.Text, sql).Tables[0];

            return dt;
        }
    }
}