using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.Entity;

namespace MVC3Bzm.Models.InterFaces
{
    public interface IErrors
    {
        /// <summary>
        /// 添加错误信息
        /// </summary>
        /// <param name="error"></param>
        /// <returns></returns>
        string InsertErrors(Errors error);


        /// <summary>
        /// 查询错误列表
        /// </summary>
        /// <param name="minPage"></param>
        /// <param name="maxPage"></param>
        /// <returns></returns>
        List<Errors> SelectErrorList(int minPage, int maxPage);

    }
}