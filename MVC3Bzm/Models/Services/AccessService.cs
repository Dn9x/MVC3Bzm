using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.InterFaces;
using MVC3Bzm.Models.Util;
using System.Configuration;
using MVC3Bzm.Models.Entity;
using MySql.Data.MySqlClient;

namespace MVC3Bzm.Models.Services
{
    public class AccessService : IAccess
    {
        public string InsertAccess(Entity.Access access)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            string sql = String.Format("insert into bzm_access(acc_url, acc_ip, acc_dns, acc_browser, acc_date) values('{0}', '{1}', '{2}', '{3}', sysdate())", access.Url, access.Ip, access.Dns, access.Browser);

            string result = MySqlUtil.ExecuteSql(connStr, sql);

            return result;
        }

        public List<Access> SelectListAccess(int minPage, int maxPage)
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            List<Access> list = new List<Access>();

            MySqlConnection conn = new MySqlConnection(connStr);

            conn.Open();

            string sql = String.Format("select id, acc_url as url, acc_ip as ip, acc_dns as dns, acc_browser as browser, acc_date as date from bzm_access order by date desc limit {0}, {1}", minPage, maxPage);

            MySqlCommand cmd = new MySqlCommand(sql, conn);

            MySqlDataReader dr = cmd.ExecuteReader();

            Access accs = null;

            while (dr.Read())
            {
                accs = new Access();

                accs.ID = dr.GetInt32("id");
                accs.Url = dr.GetString("url");
                accs.Ip = dr.GetString("ip");
                accs.Date = dr.GetDateTime("date");
                accs.Dns = dr.GetString("dns");
                accs.Browser = dr.GetString("browser");

                list.Add(accs);
            }

            dr.Close();

            conn.Close();

            return list;
        }

    }
}