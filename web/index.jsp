<%--
  Created by IntelliJ IDEA.
  User: moran
  Date: 2018/5/27
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>index</title>
    <style type="text/css">
       #searchdiv{
         position: absolute;
         left: 50%;
         top: 50%;
         margin-left:-200px;
         margin-top: -200px;

       }

    </style>
    <script type="text/javascript" src="<%= basePath %>static/js/index.js"></script>
    <script src="<%= basePath %>static/js/jquery-1.8.0.min.js" type="text/javascript"></script>

  </head>
  <body>
  <h1>首页</h1>
  <a href="list.action">消息列表页</a>
  <div id="searchdiv">
       <input type="text" size="50" id="keyword" onkeyup="getMore()" />
    <input type="button" value="度一下" width="50px">

  </div>

  </body>

</html>
