<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10
  Time: 1:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.setAttribute("path", request.getContextPath()+"/");%>
<%String path = request.getContextPath()+"/";%>
<%@ taglib prefix="s" uri="/struts-tags"%><%--OGNL--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--JSTL--%>

<html>
<head>
    <title>我的文档</title>
</head>
<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">我的文档</strong><small></small></div>
    </div>

    <hr>

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
        <form action="${path}user/conditionFind!conditionFind.action" method="post">
            上传日期<input type="date" class="am-form-field" placeholder="起始日期" name="condition.beginDate">
            至<input type="date" class="am-form-field" placeholder="终止日期" name="condition.endDate"><br/>
            文档类型<input type="text" class="am-form-field" placeholder="用户名" name="condition.userid">
            审核状态<input type="text" class="am-form-field" placeholder="用户名" name="condition.userid">

            <span class="am-input-group-btn">
                    <button class="am-btn am-btn-default" type="submit">搜索</button>
                </span>
        </form>
        <%--</div>--%>
        <%--</div>--%>
    </div>
    <div class="am-g">
        <div class="am-u-sm-12">
            <form class="am-form">

                <%---------------------表格部分-----------------------%>

                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>文档标题</th>
                        <th>上传时间</th>
                        <th>下载积分</th>
                        <th>文档类型</th>
                        <th>审核状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${docList}" var="d" varStatus="s">
                        <tr>
                            <td>${d.dtitle}</td>
                            <td>${d.ddate}</td>
                            <td>${d.dscore}</td>
                            <td>${d.dtype}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${d.dstate == 6}">审核中</c:when>
                                    <c:otherwise>已审核</c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>


                <div class="am-cf">
                    共 15 条记录
                    <div class="am-fr">
                        <ul class="am-pagination">
                            <li class="am-disabled">
                                <a href="#">«</a>
                            </li>
                            <li class="am-active">
                                <a href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#">»</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <hr>
            </form>
        </div>
    </div>
</div>
</body>
</html>
