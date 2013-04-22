$(document).ready(function () {
    //点击事件方法
    $(".stylec").click(function () {
        //取消所有的选择
        $(".stylec").attr("checked", false);

        //这个选择
        $(this).attr("checked", true);

        //获取值
        var val = $(this).val();   

        //设置cookie的时间是365天
        $.cookie('skip_bzm', val, { expires: 365, path: '/' });

        //改变文件
        switchs();
    });

    //默认
    switchs();
});

//读取cookie
function rcook() {
    //读取cookie
    var cok = $.cookie('skip_bzm');

    //判断是否为空
    if (cok == undefined) {  //undefined
        $.cookie('skip_bzm', "bck1", { expires: 365, path: '/' });

        //默认样式文件
        cok = "bck1";
    }

    //返回文件名称
    return cok;
}

//改变方法
function switchs() {
    //获取名称
    var cs = rcook();

    //选择所选择的checkbox
    $("#" + cs).attr("checked", true);

    //移除之前的样式
    $("#Link").remove();

    //新建样式
    var style = document.createElement('link');
    style.href = "/Content/styles/" + cs + ".css";
    style.rel = 'stylesheet';
    style.type = 'text/css';
    style.attributes["ID"] = "Link";
    document.getElementsByTagName('head').item(0).appendChild(style); 
}
