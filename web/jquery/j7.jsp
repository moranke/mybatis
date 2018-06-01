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

<h3>.html()与.text()</h3>
<div class="left first-div">
    <div class="div">
        <a>:first-child</a>
        <a>第二个元素</a>
        <a>:last-child</a>
    </div>
    <div class="div">
        <a>:first-child</a>
        <a>第二个元素</a>
        <a>:last-child</a>
    </div>
</div>

<h4>显示通过html方法获取到的内容</h4>
<p></p>

<h4>显示通过text方法获取到的内容</h4>
<p></p>


<script type="text/javascript">
    //显示出html方法获取到的内容
    //.html()是整个html文档结构
    $('p:first').test( $(".first-div").html() )
</script>


<script type="text/javascript">
    //显示出text方法获取到的内容
    //.text()是文本内容的合集
    $('p:last').text( $(".first-div").text() )
</script>


<script type="text/javascript">
    //通过.text()方法替换文本内容
    $(".left a:first").test('替换第一个a元素的内容')
</script>


<script type="text/javascript">
    //通过.html()方法替换html结构
    $(".left div:first").html('整个div的子节点都被替换了')
</script>


<script type="text/javascript">
    //通过.text()的回调，获取原本的内容，修改，在重新赋值
    $(".left a:first").text(function(idnex,text){
        return '增加新的文本内容' + text
    })
</script>
</body>
</html>
