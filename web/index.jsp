<%@ page import="net.sf.json.JSONArray" %><%--
  Created by IntelliJ IDEA.
  User: moran
  Date: 2018/5/27
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    JSONArray jsonArray=new JSONArray();
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>index</title>

    <link rel="stylesheet" type="text/css" href="<%= basePath %>static/css/index.css" />
    <script type="text/javascript" src="<%= basePath %>static/js/index.js"></script>
    <script src="<%= basePath %>static/js/jquery-1.8.0.min.js" type="text/javascript"></script>
    <%--onblur=clearContent()--%>
</head>
<body>
<h1>首页</h1>
<a href="list.action">消息列表页</a>
<div id="searchDiv">
    <input type="text" size="50" id="keyWord" onkeyup="getMore()"  onfocus=getMore() />
    <input type="button" value="度一下" width="50px">
    <div id="popDiv">
        <table id="contentTable" bgcolor="#fffafa" border="0" cellspacing="0" cellpadding="0">
            <tbody id="contentTableBody">
            </tbody>
        </table>
    </div>
</div>

</body>

</html>
