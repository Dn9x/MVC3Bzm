using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC3Bzm.Models.Entity
{
    public class Errors
    {
        /// <summary>
        /// 主键ID
        /// </summary>
        public int ID { get; set; }

        /// <summary>
        /// 错误信息
        /// </summary>
        public string Error { get; set; }

        /// <summary>
        /// 发生错误的时间
        /// </summary>
        public string Date { get; set; }

    }
}