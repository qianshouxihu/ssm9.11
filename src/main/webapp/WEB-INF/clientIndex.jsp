<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/28
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("path", request.getContextPath()+"/");%>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>前台首页</title>
    <link rel="stylesheet" href="${path}css/layui.css">
</head>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">前台首页</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="${path}${user.uheader}" class="layui-nav-img"> 用户
                </a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="">基本资料</a>
                    </dd>
                    <dd>
                        <a href="">安全设置</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="">注销</a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">

                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">个人信息</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="${path}menu/userList!userList.action" target="right">我的信息</a>
                        </dd>
                        <dd>
                            <a href="${path}menu/userList!userList.action" target="right">我的文档</a>
                        </dd>
                        <dd>
                            <a href="${path}menu/userList!userList.action" target="right">我的积分</a>
                        </dd>
                    </dl>
                </li>


                <li class="layui-nav-item">
                    <a href="javascript:;">文档中心</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="${path}clientUpload.jsp" target="right">上传文档</a>
                        </dd>
                        <dd>
                            <a href="product.html" target="right">搜索文档</a>
                        </dd>
                        <dd>
                            <a href="product.html" target="right">下载文档</a>
                        </dd>
                    </dl>
                </li>


            </ul>
        </div>
    </div>

    <div class="layui-body" style="z-index: 0;">
        <!-- 内容主体区域 -->
        <img src="${path}images/1.gif">
        <img src="${path}images/1.gif">
        <img src="${path}images/1.gif">
        <div style="padding: 15px;">
            <iframe src="${path}backIndex.jsp" name="right" frameborder="0" width="100%" height="1200"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        底部固定区域
    </div>
</div>

<script type="text/javascript" src="${path}js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${path}js/plugs.js">
</script>
<script type="text/javascript">
    //添加编辑弹出层
    function updatePwd(title, id) {
        $.jq_Panel({
            title: title,
            iframeWidth: 500,
            iframeHeight: 300,
            url: "updatePwd.html"
        });
    }
</script>
<script src="${path}js/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function() {
        var element = layui.element;

    });
</script>
</body>

</html>