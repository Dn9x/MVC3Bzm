using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Tree.MvcTree.Models;
using MVC3Bzm.Models.Entity;
using System.Configuration;

namespace MVC3Bzm.Models.Util
{
    public class PubUtil
    {

        public String Rss(List<Articles> list)
        {
            string reslt = "<rss xmlns:content='http://purl.org/rss/1.0/modules/content/' xmlns:wfw='http://wellformedweb.org/CommentAPI/' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:atom='http://www.w3.org/2005/Atom' xmlns:sy='http://purl.org/rss/1.0/modules/syndication/' xmlns:slash='http://purl.org/rss/1.0/modules/slash/' version='2.0'>";

            //开始拼接
            reslt += "<channel>";
            reslt += "<title>"+ConfigurationManager.AppSettings["WebName"]+"</title>";
            reslt += "<atom:link href='"+ConfigurationManager.AppSettings["WebSite"]+"' rel='self' type='application/rss+xml'/>";
            reslt += "<link>"+ConfigurationManager.AppSettings["WebSite"]+"</link>";
            reslt += "<description>做梦也很累--私人学习记录</description>";
            reslt += "<lastBuildDate>"+list[0].Date+"</lastBuildDate>";
            reslt += "<language>zh-CN</language>";
            reslt += "<sy:updatePeriod>hourly</sy:updatePeriod>";
            reslt += "<sy:updateFrequency>1</sy:updateFrequency>";
            reslt += "<generator>www.asp.net/mvc</generator>";

            //循环添加item
            foreach(Articles art in list)
            {
                reslt += "<item>";
                reslt += "<title>"+art.Title+"</title>";
                reslt += "<link>"+ConfigurationManager.AppSettings["WebSite"]+"/Home/Detail/+"+art.ID+"</link>";
                reslt += "<comments>"+ConfigurationManager.AppSettings["WebSite"]+"/Home/Detail/+"+art.ID+"</comments>";
                reslt += "<pubDate>"+art.Date+"</pubDate>";
                reslt += "<dc:creator>"+art.AdminName+"</dc:creator>";
                reslt += "<category>"+art.TagName+"</category>";
                reslt += "<guid isPermaLink='false'>"+ConfigurationManager.AppSettings["WebSite"]+"/Home/Detail/+"+art.ID+"</guid>";
                reslt += "<description>" + HttpUtility.HtmlEncode(art.Content) + "</description>";
                reslt += "<slash:comments>"+art.CommCount+"</slash:comments>";
                reslt += "</item>";
            }
            
            reslt += "</channel>";
            reslt += "</rss>";

            return reslt;
        }


    }
}