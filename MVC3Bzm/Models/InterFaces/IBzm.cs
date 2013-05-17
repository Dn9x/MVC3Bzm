using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.Entity;
using Tree.MvcTree.Models;

namespace MVC3Bzm.Models.InterFaces
{
    public interface IBzm
    {

        /// <summary>
        /// 创建实例类
        /// </summary>
        /// <returns></returns>
        Bzm BuildBzm();

        /// <summary>
        /// 根据用户名称和密码查询
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pswd"></param>
        /// <returns></returns>
        Admins GetAdminByNameAndPswd(string name, string pswd);

        /// <summary>
        /// Tag树列表
        /// </summary>
        /// <returns></returns>
        List<TreeData> TreeList();

    }
}