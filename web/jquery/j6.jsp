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

<h2>.attr()与.removeAttr()</h2>
<h3>.attr</h3>
<form>
    <input type="text" value="设置value" />
    <input type="text" value="获取value"/>
    <input type="text" value="回调拼接value" />
    <input type="text" value="删除value" />
</form>

<script type="text/javascript">
    //找到第一个input，通过attr设置属性value的值
    $("input:first").attr('value','.attr( attributeName, value )')
</script>

<script type="text/javascript">
    //找到第二个input，通过attr获取属性value的值
    $("input:eq(1)").attr('value')
</script>

<script type="text/javascript">
    //找到第三个input，通过使用一个函数来设置属性
    //可以根据该元素上的其它属性值返回最终所需的属性值
    //例如，我们可以把新的值与现有的值联系在一起：
    $("input:eq(2)").attr('value',function(i, val){
        return '通过function设置' + val
    })
</script>

<script type="text/javascript">
    //找到第四个input，通过使用removeAttr删除属性
    $("input:eq(3)").removeAttr('value')
</script>
</body>
</html>
