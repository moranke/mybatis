<%--
  Created by IntelliJ IDEA.
  User: lvdia
  Date: 2018/6/1
  Time: 6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content=""/>
    <meta name="keywords" content="idea,经验"/>
    <script src="<%=basePath%>static/js/jquery-1.8.0.min.js" type="text/javascript"></script>
    <title>Title</title>
</head>
<body>
dasd
<script type="text/javascript">alert($) </script>
</body>
</html>
