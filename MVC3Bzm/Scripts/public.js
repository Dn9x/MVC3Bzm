$(document).ready(function () {
    //處理分頁
    if (isIE6() || isIE7()) {
        $("#page").css("position", "absolute");
    }

    SetCookie();

    TagList('EM');

    //下一頁
    $("#next_p").click(function () {
        var page = $("#Hid_Page").val();

        //加載初始
        $.post(
            "/Home/NextPage",
            { "id": page },
            function (dats, status) {
                if (status = "success") {
                    var data = {
                        count: dats.substr(0, dats.indexOf("&DS")),
                        list: [eval('(' + dats.substr(dats.indexOf("&DS") + 3) + ')')]
                    };

                    var html = template.render('lists', data);

                    $("#Hid_Page").val(Number(page) + 10);

                    $("#next_page").before(html);
                }
            }
        );
    });

    //添加评论
    $("#Btn_Post").click(function () {
        $("#Btn_Post").attr("disabled", "disabled");

        var title = $("#Hid_Title").val();
        var name = $("#Txt_Name").val();
        var content = $("#Txt_Content").val();

        if (name != null && content != null) {
            //加載初始
            $.getJSON(
                "/Home/Comments",
                { "title": title, "name": name, "content": content },
                function (json, status) {
                    if (status = "success") {
                        var list = "";

                        $.each(json, function (i, item) {
                            list += "<div class='reply_list'><table width='580' height='auto' border='0' align='center'>" +
                            "<tr><td style='width:72px;' rowspan='2' align='center' valign='top'>" +
                            "<img src='../../Content/images/head.jpg' width='50' height='50' alt='" + item.User + "' title='" + item.User + "' /></td>" +
                            "<td align='left' style='width:498px; font-size:11px; color:#555;'>" + item.User + "&nbsp;&nbsp;" + item.Date + "</td>" +
                            "</tr><tr>" +
                            "<td align='left'>" +
                            "<div style='width:100%; font-size:12px; color:#555; height:auto; word-wrap:break-word; word-break:break-all;'>" + item.Content + "</div></td>" +
                            "</tr></table></div>";
                        });

                        $(".reply_list").remove();
                        $("#Div_Reply").css("display", "none");
                        $("#Txt_Content").val("");
                        $("#Btn_Post").removeAttr("disabled");

                        $("#Div_Reply").after(list);
                    }
                }
            );
        }
    });


    //返回顶部的js方法
    $("#foots").hover(function () {
        $(this).html("").html("顶部").css({ "border": "1px solid #CCC", "border-radius": "3px" });
    }, function () {
        $(this).html("").html("<img src='../../Content/images/up_48.png' width='48px' height='48px' />").css("border", "0px");
    }).click(function () {
        //跳转到锚记
        window.location.href = "#top";
    });

});

/*判斷各個瀏覽器*/
function isIE6() {
    try {
        return navigator.userAgent.split(";")[1].toLowerCase().indexOf("msie 6.0") == "-1" ? false : true;
    } catch (ex) {
        return false;
    }
}
function isIE7() {
    try {
        return navigator.userAgent.split(";")[1].toLowerCase().indexOf("msie 7.0") == "-1" ? false : true;
    } catch (ex) {
        return false;
    }
}

//设置cookie
function SetCookie() {
    //判断是否有cookie
    if (document.cookie.length > 0) {
        //判断是否有这个cookie
        var cs = document.cookie.indexOf("pagesc=");

        //如果有
        if (cs != -1) {
            //起始索引
            var start = cs + "pagesc".length + 1;

            //结束索引
            var end = document.cookie.indexOf(";", cs);

            //判断是否正确
            if (end == -1) {
                end = document.cookie.length;
            }

            cs = unescape(document.cookie.substring(start, end));
        }

        $("#pages").removeClass().addClass("pages" + cs);
    } else {    //第一次打开
        //设置cookie
        document.cookie = "pagesc=" + escape("1");

        $("#pages").removeClass().addClass("pages1");
    }
}

//監控鍵盤
$(document).keypress(function (e) {
    //判断
    if (e.which == 113) {
        //得到層的狀態
        var vis1 = $("#Div_Reply").css("display");

        //判斷
        if (vis1 == "block") {
            $("#Div_Reply").css("display", "none");
        } else if (vis1 == "none") {
            $("#Div_Reply").css("display", "block");
        }
    }
});
