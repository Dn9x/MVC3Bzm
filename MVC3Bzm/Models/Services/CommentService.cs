using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.InterFaces;
using MVC3Bzm.Models.Entity;
using MySql.Data.MySqlClient;
using Mvc3Demo3.Models.Util;
using System.Configuration;

namespace MVC3Bzm.Models.Services
{
    public class CommentService : IComment
    {

        public string InsertComment(Comments comment)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            string sql = String.Format("insert into bzm_comment(comm_user, comm_content, comm_date, comm_articleId, remark) value('{0}', '{1}', sysdate(), {2}, null)", comment.User, comment.Content, comment.ArticleId);

            string result = MySqlUtil.ExecuteSql(connStr, sql);

            return result;
        }


        public List<Comments> SelectCommentsByArticleId(string articleId)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            List<Comments> list = new List<Comments>();

            MySqlConnection conn = new MySqlConnection(connStr);

            conn.Open();

            string sql = String.Format("select id, comm_user as uname, comm_content as content, comm_date as date, comm_articleId as rid from bzm_comment where comm_articleId={0} order by comm_date desc", articleId);

            MySqlCommand cmd = new MySqlCommand(sql, conn);

            MySqlDataReader dr = cmd.ExecuteReader();

            Comments comm = null;

            while (dr.Read())
            {
                comm = new Comments();

                comm.ID = dr.GetInt32(0);
                comm.User = dr.GetString(1);
                comm.Content = dr.GetString(2);
                comm.Date = dr.GetString(3);
                comm.ArticleId = dr.GetInt32(4);

                list.Add(comm);
            }

            dr.Close();

            conn.Close();

            return list;
        }


    }
}