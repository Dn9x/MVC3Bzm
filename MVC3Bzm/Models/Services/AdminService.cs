using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.InterFaces;
using MVC3Bzm.Models.Entity;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace MVC3Bzm.Models.Services
{
    public class AdminService : IAdmin
    {
        #region IAdmin 成员

        public Admins GetAdminByNameAndPswd(string name, string pswd)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            MySqlConnection conn = new MySqlConnection(connStr);

            conn.Open();

            string sql = String.Format("select id, admin_name, admin_pswd, admin_sex, admin_email, admin_qq, admin_tel, admin_birth, admin_motto from bzm_admin where admin_name='{0}' and admin_pswd='{1}'", name, pswd);

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

        #endregion
    }
}