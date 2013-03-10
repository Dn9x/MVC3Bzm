using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC3Bzm.Models.Entity
{
    /// <summary>
    /// 记录访问信息
    /// </summary>
    public class Access
    {
        /// <summary>
        /// 主键ID
        /// </summary>
        public int ID { get; set; }

        /// <summary>
        /// 访问者的URL
        /// </summary>
        public string Url { get; set; }

        /// <summary>
        /// 访问者的Ip
        /// </summary>
        public string Ip { get; set; }
        
        /// <summary>
        /// 访问者的DNS
        /// </summary>
        public string Dns { get; set; }

        /// <summary>
        /// 访问者的浏览器
        /// </summary>
        public string Browser { get; set; }

        /// <summary>
        /// 访问者的时间
        /// </summary>
        public DateTime Date { get; set; }

    }
}