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

        public static string DictionaryToJson(IDictionary<string, string> dictionary)
        {
            StringBuilder Json = new StringBuilder();
            Json.Append("{");
            if (dictionary.Count > 0)
            {
                foreach (KeyValuePair<string, string> kvp in dictionary)
                {
                    Json.Append(kvp.Key + ":" + kvp.Value + ",");
                }
                Json.Remove(Json.Length - 1, 1);
            }
            Json.Append("}");
            return Json.ToString();
        }

        public static string DataTableToJson(DataTable dt)
        {
            StringBuilder jsonString = new StringBuilder();
            jsonString.Append("[");
            DataRowCollection drc = dt.Rows;
            for (int i = 0; i < drc.Count; i++)
            {
                jsonString.Append("{");
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    string strKey = dt.Columns[j].ColumnName;
                    string strValue = drc[i][j].ToString();
                    Type type = dt.Columns[j].DataType;
                    jsonString.Append("\"" + strKey + "\":");
                    strValue = StringFormat(strValue, type);
                    if (j < dt.Columns.Count - 1)
                    {
                        jsonString.Append(strValue + ",");
                    }
                    else
                    {
                        jsonString.Append(strValue);
                    }
                }
                jsonString.Append("},");
            }
            jsonString.Remove(jsonString.Length - 1, 1);
            jsonString.Append("]");
            return jsonString.ToString();
        }

        public static string DataTableToJson1(DataTable dt)
        {
            StringBuilder jsonString = new StringBuilder();
            jsonString.Append("[");
            DataRowCollection drc = dt.Rows;
            for (int i = 0; i < drc.Count; i++)
            {
                jsonString.Append("{");
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    string strKey = dt.Columns[j].ColumnName;
                    string strValue = drc[i][j].ToString();
                    strValue = InputUtil.ReplaceOutput(strValue);
                    Type type = dt.Columns[j].DataType;
                    jsonString.Append("\"" + strKey + "\":");
                    strValue = StringFormat(strValue, type);
                    if (j < dt.Columns.Count - 1)
                    {
                        jsonString.Append(strValue + ",");
                    }
                    else
                    {
                        jsonString.Append(strValue);
                    }
                }
                jsonString.Append("},");
            }
            jsonString.Remove(jsonString.Length - 1, 1);
            jsonString.Append("]");
            return jsonString.ToString();
        }

        public static string DataTableToJson(DataTable dt, string jsonName)
        {
            StringBuilder Json = new StringBuilder();
            if (string.IsNullOrEmpty(jsonName))
                jsonName = dt.TableName;
            Json.Append("{\"" + jsonName + "\":[");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Json.Append("{");
                    for (int j = 0; j < dt.Columns.Count; j++)
                    {
                        Type type = dt.Rows[i][j].GetType();
                        Json.Append("\"" + dt.Columns[j].ColumnName.ToString() + "\":" + StringFormat(dt.Rows[i][j].ToString(), type));
                        if (j < dt.Columns.Count - 1)
                        {
                            Json.Append(",");
                        }
                    }
                    Json.Append("}");
                    if (i < dt.Rows.Count - 1)
                    {
                        Json.Append(",");
                    }
                }
            }
            Json.Append("]}");
            return Json.ToString();
        }

        private static string String2Json(String s)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < s.Length; i++)
            {
                char c = s.ToCharArray()[i];
                switch (c)
                {
                    case '\"':
                        sb.Append("\\\""); break;
                    case '\\':
                        sb.Append("\\\\"); break;
                    case '/':
                        sb.Append("\\/"); break;
                    case '\b':
                        sb.Append("\\b"); break;
                    case '\f':
                        sb.Append("\\f"); break;
                    case '\n':
                        sb.Append("\\n"); break;
                    case '\r':
                        sb.Append("\\r"); break;
                    case '\t':
                        sb.Append("\\t"); break;
                    default:
                        sb.Append(c); break;
                }
            }
            return sb.ToString();
        }

        private static string StringFormat(string str, Type type)
        {
            if (type == typeof(string))
            {
                str = String2Json(str);
                str = "\"" + str + "\"";
            }
            else if (type == typeof(DateTime))
            {
                str = "\"" + str + "\"";
            }
            else if (type == typeof(bool))
            {
                str = str.ToLower();
            }
            else if (type != typeof(string) && string.IsNullOrEmpty(str))
            {
                str = "\"" + str + "\"";
            }
            return str;
        }


    }
}