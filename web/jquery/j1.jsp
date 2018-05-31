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
    <style type="text/css">
        div{
            padding:8px 0px;
            font-size:12px;
            text-align:center;
            border:solid 1px #888;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            $("div").html("hello");
        });
    </script>
    <!-- 使用JS原生语法 -->
    <script type="text/javascript">
        window.onload = function(){
            // 通过原生JS语法获取id为imooc1的元素p
            var p = document.getElementById('imooc1');
            // 将元素p在html中内容改变
            p.innerHTML = 'P1：您好！通过慕课网学习jQuery才是最佳的途径';
            // 将元素p的内容颜色改为红色
            p.style.color = 'red';
        }
    </script>

    <!-- 使用jQuery语法 -->
    <script type="text/javascript">
        $(document).ready(function() {
            /**
             * 通过jQuery语法获取id为imooc2的元素获得一个jQuery对象
             * 调用该对象的html()方法进行更改内容
             * 调用该对象的css()方法进行更改颜色样式
             */
            var $p = $('#imooc2');
            $p.html('P2：您好！通过慕课网学习jQuery才是最佳的途径').css('color','red');
        });
    </script>
</head>
<body>
dasd
<%--<script type="text/javascript">alert($) </script>--%>
<div></div>
<p id="imooc1"></p>
<p id="imooc2"></p>
</body>
</html>
