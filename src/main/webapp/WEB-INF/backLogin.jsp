<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/28
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("path", request.getContextPath()+"/");%>
<%String path = request.getContextPath()+"/";%>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="<%=path%>css/layui.css">
    <link rel="stylesheet" href="<%=path%>css/login.css">
    <link rel="icon" href="/favicon.ico">
    <title>后台管理登录</title>

    <script type="text/javascript">
        function alertInfo()
        {
            var loginResult = "${requestScope.loginResult}";//登录结果信息

            if(loginResult == "fail")
            {
                alert("账号密码错误，请重新输入！");
            }
        }

    </script>


</head>
<body class="login-wrap" onload="alertInfo()">

<div class="login-container">
    <form class="login-form" action="${path}user/backLogin.action" method="post" enctype="multipart/form-data">
        <div class="input-group">
            <input type="text" id="aid" name="aid" class="input-field">
            <label for="aid" class="input-label">
                <span class="label-title">用户名</span>
            </label>
        </div>
        <div class="input-group">
            <input type="password" id="apass" name="apass" class="input-field">
            <label for="apass" class="input-label">
                <span class="label-title">密码</span>
            </label>
        </div>

        <button type="submit" class="login-button">登录<i class="ai ai-enter"></i></button>

<%--        <a href="${path}clientReg.jsp"}>
            <button type="button" class="login-button">注册<i class="ai ai-enter"></i></button>
        </a>--%>

        <a href="${path}a/clientLogin.jsp"}>
            <button type="button" class="login-button">前台登录入口<i class="ai ai-enter"></i></button>
        </a>
    </form>
</div>
</body>
<%--<script src="${path}js/layui.js"></script>
<script src="${path}js/index.js" data-main="login"></script>--%>
</html>