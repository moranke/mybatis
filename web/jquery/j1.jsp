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

<h2>基本筛选器</h2>
<h3>:first/:last/:even/:odd</h3>
<div class="left">
    <div class="div">
        <p>div:first</p>
        <p>:even</p>
    </div>
    <div class="div">
        <p>:odd</p>
    </div>
    <div class="div">
        <p>:even</p>
    </div>
    <div class="div">
        <p>:odd</p>
    </div>
    <div class="div">
        <p>:even</p>
    </div>
    <div class="div">
        <p>div:last</p>
        <p>:odd</p>
    </div>
</div>
<script type="text/javascript">
    //找到第一个div
    $(".div:first").css("color", "#CD00CD");
</script>

<script type="text/javascript">
    //找到最后一个div
    $(".div:last").css("color", "#CD00CD");
</script>

<script type="text/javascript">
    //:even 选择所引值为偶数的元素，从 0 开始计数
    $(".div:even").css("border", "3px groove red");
</script>

<script type="text/javascript">
    //:odd 选择所引值为奇数的元素，从 0 开始计数
    $(".div:odd").css("border", "3px groove blue");
</script>


<h3>:eq/:gt/:lt</h3>
<div class="left">
    <div class="aaron">
        <p>:lt(3)</p>
    </div>
    <div class="aaron">
        <p>:lt(3)</p>
    </div>
    <div class="aaron">
        <p>:eq(2)</p>
    </div>
    <div class="aaron">
    </div>
    <div class="aaron">
        <p>:gt(3)</p>
    </div>
    <div class="aaron">
        <p>:gt(3)</p>
    </div>
</div>
<script type="text/javascript">
    //:eq
    //选择单个
    $(".aaron:eq(2)").css("border", "3px groove blue");
</script>

<script type="text/javascript">
    //:gt 选择匹配集合中所有索引值大于给定index参数的元素
    $(".aaron:gt(3)").css("border", "3px groove blue");
</script>

<script type="text/javascript">
    //:lt 选择匹配集合中所有索引值小于给定index参数的元素
    //与:gt相反
    $(".aaron:lt(2)").css("color", "#CD00CD");
</script>

<h3>:not</h3>
<div class="left">
    <div>
        <input type="checkbox" name="a" />
        <p>Aaron</p>
    </div>
    <div>
        <input type="checkbox" name="b" />
        <p>慕课</p>
    </div>
    <div>
        <input type="checkbox" name="c" checked="checked" />
        <p>其他</p>
    </div>
</div>
<script type="text/javascript">
    //:not 选择所有元素去除不匹配给定的选择器的元素
    //选中所有紧接着没有checked属性的input元素后的p元素，赋予颜色
    $("input:not(:checked) + p").css("background-color", "#CD00CD");
</script>
</body>
</html>
