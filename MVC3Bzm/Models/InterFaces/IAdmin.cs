using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.Entity;

namespace MVC3Bzm.Models.InterFaces
{
    public interface IAdmin
    {

        /// <summary>
        /// 根据用户名和密码查询用户
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pswd"></param>
        /// <returns></returns>
        Admins GetAdminByNameAndPswd(string name, string pswd);


    }
}