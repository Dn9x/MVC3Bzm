using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.Entity;

namespace MVC3Bzm.Models.InterFaces
{
    public interface IAccess
    {
        /// <summary>
        /// 添加访问信息
        /// </summary>
        /// <param name="access">访问实体类</param>
        /// <returns></returns>
        string InsertAccess(Access access);


        /// <summary>
        /// 查询所有访问信息
        /// </summary>
        /// <param name="minPage">分页起始</param>
        /// <param name="maxPage">每页显示的数量</param>
        /// <returns></returns>
        List<Access> SelectListAccess(int minPage, int maxPage);

    }
}