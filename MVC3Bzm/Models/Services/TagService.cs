using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC3Bzm.Models.InterFaces;
using System.Configuration;
using MVC3Bzm.Models.Entity;
using MySql.Data.MySqlClient;
using Tree.MvcTree.Models;
using Mvc3Demo3.Models.InterFaces;
using Mvc3Demo3.Models;
using Mvc3Demo3.Models.Entity;

namespace MVC3Bzm.Models.Services
{
    public class TagService : ITag
    {
        #region ITag 成员

        public int InsertTags(Entity.Tags tags)
        {
            throw new NotImplementedException();
        }

        public List<Tags> SelectTagList()
        {
            string connStr = ConfigurationManager.AppSettings["DBConn"];

            List<Tags> list = new List<Tags>();

            MySqlConnection conn = new MySqlConnection(connStr);

            conn.Open();

            string sql = String.Format("select id, tag_name, tag_num from bzm_tag");

            MySqlCommand cmd = new MySqlCommand(sql, conn);

            MySqlDataReader dr = cmd.ExecuteReader();

            Tags tags = null;

            while (dr.Read())
            {
                tags = new Tags();

                tags.ID = dr.GetInt32(0);
                tags.TagName = dr.GetString(1);
                tags.TagNo = dr.GetString(2);

                list.Add(tags);
            }

            dr.Close();

            conn.Close();

            return list;
        }
        

        public List<TreeData> TreeList(List<Tags> tags)
        {
            List<Tree.MvcTree.Models.TreeData> result = new List<TreeData>();

            result.Add(new TreeData(0, "做梦也很累", "../Content/images/folder_group_close.gif", "../Content/images/folder_group_open.gif", "", "../Content/images", null, true, "", "", -1));

            IArticle iArt = ServiceBuilder.BuildArticleService();

            //循环生成子类
            for (int i = 1; i <= tags.Count; i++)
            {
                result.Add(new TreeData(i, tags[i-1].TagName, "../Content/images/folder_group_close.gif", "../Content/images/folder_group_open.gif", "", null, 0));

                List<Articles> arts = iArt.SelectArticlesByTagId(tags[i - 1].ID + "");

                //判断是否有数据
                if (arts != null)
                {
                    //循环生成Tag子类
                    for (int j = 0; j < arts.Count; j++)
                    {
                        var title = "<a href='Detail/" + arts[j].ID + "' target='_blank'>" + arts[j].Title + "</a>";
                        result.Add(new TreeData((j + tags.Count) * 2, title, "", "", "", null, false, i));
                    }
                }
            }

            return result;
        }

        #endregion
    }
}