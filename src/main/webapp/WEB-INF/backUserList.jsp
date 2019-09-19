<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 0:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("path", request.getContextPath()+"/");%>
<%String path = request.getContextPath()+"/";%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--JSTL--%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
<%--    <link rel="stylesheet" href="${path}css/amazeui.min.css" />--%>
<%--    <link rel="stylesheet" href="${path}css/admin.css" />--%>
<%--    <link rel="stylesheet" href="${path}css/bootstrap.min.css" />--%>
    <link rel="stylesheet" href="${path}css/layui.css"/>

    <script src="${path}js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${path}js/layui.js" type="text/javascript" ></script>
<%--    <script src="${path}js/bootstrap.min.js" type="text/javascript"></script>--%>
<%--    <script src="${path}js/layui.js" type="text/javascript"></script>--%>
<%--    <script src="${path}js/lay/dest/layui.all.js" type="text/javascript"></script>--%>


    <script type="text/javascript">
        /*启用禁用*/
        function onoff(userid,ustate) {
            if (ustate == "1")
            {
                if(confirm("确定禁用客户吗？"))
                {
                    location.href="${path}user/onoff!onoff.action?user.userid="+userid+"&user.ustate="+ustate;
                    alert("禁用成功！");
                }
            }
            else
            {
                if(confirm("确定启用客户吗？"))
                {
                    location.href="${path}user/onoff!onoff.action?user.userid="+userid+"&user.ustate="+ustate;
                    alert("启用成功！");
                }
            }
        }
        /*删除*/
        function deleteUser(userid) {
            alert(userid);
            if (confirm("确定删除客户吗？"))
            {
                location.href="${path}user/delete!delete.action?user.userid="+userid;
                alert("删除成功！");
            }
        }
        /*测试用*/
        function aaa() {
            alert("aaa");
        }
    </script>


</head>

<body>

    <table class="layui-table" id="layui_table_id" lay-filter="dataTable"></table>





<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户列表</strong><small></small></div>
    </div>

    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
                </div>
            </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">

        </div>
        <%--<div class="am-u-sm-12 am-u-md-3">--%>
            <%--<div class="am-input-group am-input-group-sm">--%>

        <%----------------------------------条件查询--------------------------------------%>
        <div class="layui-card-body ">
            <div class="demoTable">
                <div class="layui-inline layui-show-xs-block">
                    <input class="layui-input"  autocomplete="off" placeholder="开始日" name="beginDate" id="beginDate">
                </div>
                <div class="layui-inline layui-show-xs-block">
                    <input class="layui-input"  autocomplete="off" placeholder="截止日" name="endDate" id="endDate">
                </div>
                <div class="layui-inline layui-show-xs-block">
                    <input class="layui-input"  autocomplete="off" placeholder="请输入用户名" name="userid"  id="userid">
                </div>
                <div class="layui-inline layui-show-xs-block">
                    <button class="layui-btn"  data-type="reload">搜索</button>
                </div>
            </div>
        </div>

        <div class="layui-card-body" align="center" >
            <table class="layui-table" lay-filter="test" id="utable" align="center">
            </table>
        </div>


<%--        <form action="${path}user/conditionFind!conditionFind.action" method="post">--%>
<%--                注册时间<input type="date" class="am-form-field" id="beginDate" placeholder="起始时间" name="beginDate">--%>
<%--                至<input type="date" class="am-form-field" id="endDate" placeholder="终止时间" name="endDate"><br/>--%>
<%--                用户名<input type="text" class="am-form-field" id="userid" placeholder="用户名" name="userid">--%>

<%--                <span class="am-input-group-btn">--%>
<%--                    <button class="am-btn am-btn-default" type="submit">搜索</button>--%>
<%--                </span>--%>
<%--            </form>--%>
    </div>
    <div class="am-g">
        <div class="am-u-sm-12">
            <form class="am-form">

            </form>
        </div>
    </div>
</div>


</body>

    <%--定义工具条--%>
    <script id="barDemo" type="text/html">
        <div class="layui-btn-container">
            <button class="layui-btn layui-btn-sm" lay-event="del">删除</button>
            <button class="layui-btn layui-btn-sm" lay-event="edit">启用禁用</button>
            <button class="layui-btn layui-btn-sm" lay-event="resetPass">重置密码</button>
        </div>
    </script>

    <script>
        layui.use('table', function() {
            var table = layui.table;
            table.render({
                elem: '#layui_table_id'                  //定位表格
                , url: '<%=path%>menu/userList.action'   //请求路径
                , page: true                             //开启分页（初始值为1）
                , limit:3                                //每页行数
                , id: 'testReload'                       //查询同样走这个ajax，需要id
                ,parseData: function (res) {             //解析数据
                    console.log("返回值" + res);
                    console.log("状态码" + res.code);
                    // console.log("消息" + res.msg);
                    console.log("条数" + res.count);
                    console.log("数据" + res.data);

                    return {
                        "code": eval(res.code), //解析接口状态
                        "msg": res.msg,         //解析提示文本
                        "count": res.count,     //解析数据长度
                        "data": res.data        //解析数据列表
                    };
                }
                , cols: [[                      //定义表头
                      {field: 'userid', title: '用户id', minWidth: 100}
                    , {field: 'uname', title: '用户名', minWidth: 80}
                    , {field: 'upass', title: '密码', minWidth: 80}
                    , {field: 'right', title: '操作', toolbar:'#barDemo' ,minWidth:270}//工具条
                ]]
            })

            //触发查询按钮
            var $ = layui.$, active = {
                reload: function(){
                    alert("触发查询按钮");
                    var beginDate = $('#beginDate');
                    var endDate = $('#endDate');
                    var uid = $('#userid');
                    alert(beginDate.val()+endDate.val()+uid.val());
                    //执行重载
                    table.reload('testReload', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {   //传参数
                            beginDate : beginDate.val(),
                            endDate : endDate.val(),
                            uid : uid.val(),
                        }
                    }, 'data');
                }
            };

            $('.demoTable .layui-btn').on('click', function(){
                alert("触发按钮");
                var type = $(this).data('type');
                active[type] ? active[type].call(this) : '';
            })

            //监听行工具事件
            table.on('tool(test)', function(obj){
                alert("触发工具条按钮");
                var data = obj.data;
                console.log(obj);
                if(obj.event === 'del'){
                    layer.confirm('真的删除行么', function(index){
                        obj.del();
                        layer.close(index);
                    });
                } else if(obj.event === 'edit'){
                    layer.prompt({
                        formType: 2
                        ,value: data.userid
                    }, function(value, index){
                        obj.update({
                            username: value
                        });
                        layer.close(index);
                    });
                }
            });
        });





        <%--    //触发查询按钮--%>
        <%--    var $ = layui.$ , active = {--%>
        <%--        reload: function(){--%>
        <%--            var beginDate = $('#beginDate');--%>
        <%--            var endDate = $('#endDate');--%>
        <%--            var userid = $('#userid');--%>
        <%--            //执行重载--%>
        <%--            table.reload('testReload', {--%>
        <%--                page: {--%>
        <%--                    curr: 1 //重新从第 1 页开始--%>
        <%--                }--%>
        <%--                ,where: {--%>
        <%--                    beginDate: beginDate.val(),--%>
        <%--                    endDate: endDate.val(),--%>
        <%--                    userid: userid.val(),--%>
        <%--                }--%>
        <%--            }, 'data');--%>
        <%--        }--%>
        <%--    };--%>

        <%--    $('.demoTable .layui-btn').on('click', function(){--%>
        <%--        var type = $(this).data('type');--%>
        <%--        active[type] ? active[type].call(this) : '';--%>
        <%--    })--%>

        <%--    //监听行工具事件--%>
        <%--    table.on('tool(table)', function(obj) {--%>
        <%--        var data = obj.data;--%>
        <%--        alert(data.userid);--%>
        <%--        if (obj.event === 'delete') {--%>
        <%--            layer.confirm('确定删除？', function (index) {--%>
        <%--                fal("<%=path%>menu/delete.action", data.userid);--%>
        <%--                layer.close(index);--%>
        <%--            });--%>
        <%--        }--%>
        <%--        &lt;%&ndash; else if (obj.event === 'nopass') {&ndash;%&gt;--%>
        <%--        &lt;%&ndash;    layer.confirm('确定审核不通过？', function (index) {&ndash;%&gt;--%>
        <%--        &lt;%&ndash;        fal("<%=path%>admin/noPassMethod.action",data.did);&ndash;%&gt;--%>
        <%--        &lt;%&ndash;        layer.close(index);&ndash;%&gt;--%>
        <%--        &lt;%&ndash;    });&ndash;%&gt;--%>
        <%--        &lt;%&ndash;}&ndash;%&gt;--%>

        <%--    });--%>


        <%--    function fal(url,userid) {--%>
        <%--        $.ajax({--%>
        <%--            async: true,--%>
        <%--            type: "post",--%>
        <%--            url: url,--%>
        <%--            dataType: "text",--%>
        <%--            data: {"userid":userid},--%>
        <%--            success: function (redata) {--%>
        <%--                alert(redata);--%>

        <%--                if(redata==1){--%>
        <%--                    layer.msg("修改成功");--%>
        <%--                }else{--%>
        <%--                    layer.msg("修改失败");--%>
        <%--                }--%>
        <%--                //执行重载--%>
        <%--                table.reload('testReload', {--%>
        <%--                    where: {--%>
        <%--                        beginDate: beginDate.value,--%>
        <%--                        endDate:endDate.value,--%>
        <%--                        userid:userid.value,--%>
        <%--                    }--%>
        <%--                }, 'data');--%>
        <%--            },--%>
        <%--            error: function (dat) {--%>
        <%--                layer.msg('断开');--%>
        <%--            }--%>
        <%--        })--%>
        <%--    }--%>
        <%--});--%>
    </script>
</html>
