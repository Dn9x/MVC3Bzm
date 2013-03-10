using Mvc3Demo3.Models.InterFaces;
using Mvc3Demo3.Models.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.InterFaces;
using MVC3Bzm.Models.Services;

namespace Mvc3Demo3.Models
{
    /// <summary>
    /// 服务组件，创建业务服务组件
    /// </summary>
    public sealed class ServiceBuilder
    {

        /// <summary>
        /// 创建文章服务
        /// </summary>
        /// <returns></returns>
        public static IArticle BuildArticleService()
        {
            return new ArticleService();
        }

        /// <summary>
        /// 创建评论服务
        /// </summary>
        /// <returns></returns>
        public static IComment BuildCommentService()
        {
            return new CommentService();
        }


        /// <summary>
        /// 创建访问服务
        /// </summary>
        /// <returns></returns>
        public static IAccess BuildAccessService()
        {
            return new AccessService();
        }


    }
}