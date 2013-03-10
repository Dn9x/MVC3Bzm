using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.InterFaces;
using Mvc3Demo3.Models.Util;

namespace MVC3Bzm.Models.Services
{
    public class AccessService : IAccess
    {
        public string InsertAccess(Entity.Access access)
        {
            string connStr = "Database=biezuomeng;Data Source=localhost;User Id=root;Password=1234;pooling=true;CharSet=utf8;port=3306";

            string sql = String.Format("insert into bzm_access(acc_url, acc_ip, acc_dns, acc_browser, acc_date) values('{0}', '{1}', '{2}', '{3}', sysdate())", access.Url, access.Ip, access.Dns, access.Browser);

            string result = MySqlUtil.ExecuteSql(connStr, sql);

            return result;
        }

        public List<Entity.Access> SelectListAccess(int minPage, int maxPage)
        {
            throw new NotImplementedException();
        }
    }
}