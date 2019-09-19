<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/4
  Time: 1:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="text-align: center;">
    <form action="${path}user/uploads.action" method="post" enctype="multipart/form-data">
        <input type="file" name="uploadImage"><br/>
        请输入简介：<input type="text" name="doc.dsummary" placeholder="请输入简介"><br/>
        请选择类型：<select name="doc.dtype">
                        <option name="doc.dtype" value="1">文化</option>
                        <option name="doc.dtype" value="2">科学</option>
                        <option name="doc.dtype" value="3">技术</option>
                        <option name="doc.dtype" value="4">艺术</option>
                    </select><br/>
        请输入关键词：<input type="text" name="doc.dword"/><br/>
        <input type="submit" value="提交"/>
    </form>
</body>
</html>
