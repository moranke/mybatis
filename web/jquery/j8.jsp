<%--
  Created by IntelliJ IDEA.
  User: moran
  Date: 2018/6/1
  Time: 10:27
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
<div id="divtest">
    <div class="title">
        <span class="fl">我最爱吃的水果</span>
        <span class="fr">
                    <input id="btnShow" type="button" value="加载" />
                </span>
    </div>
    <ul></ul>
</div>

<script type="text/javascript">
    $(function () {
        $("#btnShow").bind("click", function () {
            var $this = $(this);
            $("ul")
                .html("<img src='Images/Loading.gif' alt=''/>")
                .load("http://www.imooc.com/data/fruit_part.html", function (){
                    $this.attr("disabled", "true");
        });
    })
    });
</script>
</body>
</html>
