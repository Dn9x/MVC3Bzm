using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.InterFaces;
using Mvc3Demo3.Models.Util;
using MVC3Bzm.Models.Entity;

namespace MVC3Bzm.Models.Services
{
    public class ErrorService : IErrors
    {

        public string InsertErrors(Errors error)
        {
            string connStr = "Database=biezuomeng;Data Source=localhost;User Id=root;Password=1234;pooling=true;CharSet=utf8;port=3306";

            string sql = String.Format("insert into bzm_error(error_msg, error_date) value('{0}', sysdate())", error.Error);

            string result = MySqlUtil.ExecuteSql(connStr, sql);

            return result;
        }

        public List<Errors> SelectErrorList(int minPage, int maxPage)
        {
            throw new NotImplementedException();
        }

    }
}