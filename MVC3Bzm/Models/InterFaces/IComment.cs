using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.Entity;

namespace MVC3Bzm.Models.InterFaces
{
    public interface IComment
    {

        /// <summary>
        /// 添加评论
        /// </summary>
        /// <param name="comment"></param>
        /// <returns></returns>
        string InsertComment(Comments comment);

        /// <summary>
        /// 根据文章ID获取评论
        /// </summary>
        /// <param name="articleId"></param>
        /// <returns></returns>
        List<Comments> SelectCommentsByArticleId(string articleId);

    }
}