using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Reflection;
using System.Data;
using System.Runtime.Serialization.Json;
using System.IO;

namespace MVC3Bzm.Models.Util
{
    public sealed class JsonUtil
    {
        /// <summary>
        /// 把list转换为json
        /// </summary>
        /// <param name="list">List里面的数据是一个类</param>
        /// <returns></returns>
        public static string ListToJson<T>(IList<T> list)
        {
            if (list.Count > 0)
            {
                //获取对象
                object obj = list[0];

                //获取json的名称
                string jsonName = obj.GetType().Name;

                //得到转换对象
                DataContractJsonSerializer json = new DataContractJsonSerializer(list.GetType());

                //通过刘转换
                using (MemoryStream stream = new MemoryStream())
                {
                    json.WriteObject(stream, list);

                    jsonName = Encoding.UTF8.GetString(stream.ToArray());
                }

                //返回
                return list.Count + "&DS" + jsonName;
            }
            else
            {
                return null;
            }
            
        }

        /// <summary>
        /// 把list转换为json
        /// </summary>
        /// <param name="list">List里面的数据是一个类</param>
        /// <returns></returns>
        public static string ListToJson1<T>(IList<T> list)
        {
            //获取对象
            object obj = list[0];

            //获取json的名称
            string jsonName = obj.GetType().Name;

            //得到转换对象
            DataContractJsonSerializer json = new DataContractJsonSerializer(list.GetType());

            //通过刘转换
            using (MemoryStream stream = new MemoryStream())
            {
                json.WriteObject(stream, list);

                jsonName = Encoding.UTF8.GetString(stream.ToArray());
            }

            //返回
            return jsonName;
        }

    }
}