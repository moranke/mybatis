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

<h2>子元素筛选选择器</h2>
<h3>input、text、password、radio、checkbox</h3>
<h3>submit、image、reset、button、file</h3>
<div class="left first-div">
    <form>
        <input type="text" value="text类型"/>
        <input type="password" value="password"/>
        <input type="radio"/>
        <input type="checkbox"/>
        <input type="submit" />
        <input type="image" />
        <input type="reset" />
        <input type="button" value="Button" />
        <input type="file" />
    </form>
</div>

<script type="text/javascript">
    //查找所有 input, textarea, select 和 button 元素
    //:input 选择器基本上选择所有表单控件
    $(':input').css("border", "1px groove red");
</script>

<script type="text/javascript">
    //匹配所有input元素中类型为text的input元素
    $('input:text').css("background", "#A2CD5A");
</script>

<script type="text/javascript">
    //匹配所有input元素中类型为password的input元素
    $('input:password').css("background", "yellow");
</script>

<script type="text/javascript">
    //匹配所有input元素中的单选按钮,并选中
    $('input:radio').attr('checked','true');
</script>

<script type="text/javascript">
    //匹配所有input元素中的复选按钮,并选中
    $('input:checkbox').attr('checked','true');
</script>

<script type="text/javascript">
    //匹配所有input元素中的提交的按钮,修改背景颜色
    $('input:submit').css("background", "#C6E2FF");
</script>

<script type="text/javascript">
    //匹配所有input元素中的图像类型的元素,修改背景颜色
    $('input:image').css("background", "#F4A460");
</script>

<script type="text/javascript">
    //匹配所有input元素中类型为按钮的元素
    $('input:button').css("background", "red");
</script>

<script type="text/javascript">
    //匹配所有input元素中类型为file的元素
    $('input:file').css("background", "#CD1076");
</script>

</body>
</html>
