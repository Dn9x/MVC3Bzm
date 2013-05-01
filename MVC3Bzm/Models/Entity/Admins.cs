using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC3Bzm.Models.Entity
{
    public class Admins
    {
        /// <summary>
        /// ID
        /// </summary>
        public int ID { get; set; }

        /// <summary>
        /// 名称
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 密码
        /// </summary>
        public string Pswd { get; set; }

        /// <summary>
        /// 头像
        /// </summary>
        public string Head { get; set; }

        /// <summary>
        /// 性别
        /// </summary>
        public string Sex { get; set; }

        /// <summary>
        /// 生日
        /// </summary>
        public string Birth { get; set; }

        /// <summary>
        /// 邮箱
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// QQ
        /// </summary>
        public string QQ { get; set; }

        /// <summary>
        /// 电话
        /// </summary>
        public string Tel { get; set; }

        /// <summary>
        /// 座右铭 
        /// </summary>
        public string Motto { get; set; }

    }
}