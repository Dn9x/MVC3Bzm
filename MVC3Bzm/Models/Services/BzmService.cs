using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.Entity;
using MVC3Bzm.Models.InterFaces;
using MySql.Data.MySqlClient;
using System.Configuration;
using Tree.MvcTree.Models;
using MVC3Bzm.Models.Util;

namespace MVC3Bzm.Models.Services
{
    public class BzmService : IBzm
    {
        #region IBzm 成员

        public Bzm BuildBzm()
        {
            //获取连线
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            //得到连接
            MySqlConnection conn = new MySqlConnection(connStr);

            return new Bzm(conn);
        }

        public Admins GetAdminByNameAndPswd(string name, string pswd)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            MySqlConnection conn = new MySqlConnection(connStr);

            conn.Open();

            string sql = String.Format("select id, admin_name, admin_pswd, admin_sex, admin_email, admin_qq, admin_tel, admin_birth, admin_motto from bzm_admin where admin_name='{0}' and admin_pswd='{1}'", InputUtil.ReplaceInput(name), InputUtil.ReplaceInput(pswd));

            MySqlCommand cmd = new MySqlCommand(sql, conn);

            MySqlDataReader dr = cmd.ExecuteReader();

            Admins admin = null;

            if (dr.Read())
            {
                admin = new Admins();

                admin.ID = dr.GetInt32("id");
                admin.Name = dr.GetString("admin_name");
                admin.Pswd = dr.GetString("admin_pswd");
                admin.Sex = dr.GetString("admin_sex");
                admin.Birth = dr.GetString("admin_birth");
                admin.Email = dr.GetString("admin_email");
                admin.QQ = dr.GetString("admin_qq");
                admin.Tel = dr.GetString("admin_tel");
                admin.Motto = dr.GetString("admin_motto");
            }

            dr.Close();

            conn.Close();

            return admin;
        }

        public List<TreeData> TreeList()
        {
            List<TreeData> result = new List<TreeData>();

            result.Add(new TreeData(0, "做梦也很累", "../Content/images/folder_group_close.gif", "../Content/images/folder_group_open.gif", "", "../Content/images", null, true, "", "", -1));

            IBzm iBzm = new BzmService();

            using (Bzm bzm = iBzm.BuildBzm())
            {
                //使用延迟加载
                bzm.DeferredLoadingEnabled = true;

                var tags = from t in bzm.BZMTag select t;

                int i = 1;

                foreach (BZMTag t in tags)
                {
                    result.Add(new TreeData(i, t.TagName, "../Content/images/folder_group_close.gif", "../Content/images/folder_group_open.gif", "", null, 0));

                    //判断是否有数据
                    if (t.BZMArticle != null)
                    {
                        int j = 0;

                        foreach (BZMArticle art in t.BZMArticle)
                        {
                            var title = "<a href='Detail/" + art.ID + "' target='_blank' title='" + art.ArticleDate + "'>" + art.ArticleTitle + "</a>";
                            result.Add(new TreeData((j + tags.Count()) * 2, title, "", "", "", null, false, i));

                            j++;
                        }
                    }

                    i++;
                }

            }

            return result;
        }


        #endregion
    }
}