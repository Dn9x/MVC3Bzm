using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.Entity;
using Tree.MvcTree.Models;

namespace MVC3Bzm.Models.InterFaces
{
    public interface ITag
    {

        /// <summary>
        /// 添加一个Tag
        /// </summary>
        /// <param name="tags"></param>
        /// <returns></returns>
        int InsertTags(Tags tags);


        /// <summary>
        /// 查询Tag集合
        /// </summary>
        /// <returns></returns>
        List<Tags> SelectTagList();


        /// <summary>
        /// 生成tree
        /// </summary>
        /// <returns></returns>
        List<TreeData> TreeList(List<Tags> tags);


    }
}