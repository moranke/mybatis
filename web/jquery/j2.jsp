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
            $("#div4").html("hello");
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
<div id="div1">hello</div>
<p id="imooc1"></p>
<p id="imooc2"></p>
<div>元素一</div>
<div>元素二</div>
<div id="div4">元素三</div>
<script type="text/javascript">
    var $div = $('div'); //jQuery对象
    var div = $div.get(2);
    div.style.color = 'red'; //操作dom对象的属性
    $div.first().css('color','red');


</script>
<div class="aaron">
    <p>class="aaron"</p>
    <p>选中</p>
</div>
<div class="aaron">
    <p>class="aaron"</p>
    <p>选中</p>
</div>

<div class="imooc">
    <p>class="imooc"</p>
    <p>jQuery选中</p>
</div>
<div class="imooc">
    <p>class="imooc"</p>
    <p>jQuery选中</p>
</div>

<script type="text/javascript">
    //通过原生方法处理
    //样式是可以多选的，所以得到的是一个合集
    //需要通过循环给合集中每一个元素修改样式
    var divs = document.getElementsByClassName('aaron');
    for (var i = 0; i < divs.length; i++) {
        divs[i].style.border = "3px solid blue";
    }
</script>

<script type="text/javascript">
    //通过jQuery直接传入class
    //class选择器可以选择多个元素
        $(".imooc").css("border", "3px solid red");
</script>



<h2>子选择器与后代选择器</h2>
<div class="left">
    <div class="aaron">
        <p>div下的第一个p元素</p>
    </div>
    <div class="aaron">
        <p>div下的第一个p元素</p>
    </div>
</div>
<div class="right">
    <div class="imooc">
        <article>
            <p>div下的article下的p元素</p>
        </article>
    </div>
    <div class="imooc">
        <article>
            <p>div下的article下的p元素</p>
        </article>
    </div>
</div>

<script type="text/javascript">
    //子选择器
    //$('div > p') 选择所有div元素里面的子元素P
    $('div > p').css("border", "1px groove red");
</script>

<script type="text/javascript">
    //后代选择器
    //$('div  p') 选择所有div元素里面的p元素
    $('div p').css("border", "1px groove red");
</script>


<h2>相邻兄弟选择器与一般兄弟选择器</h2>
<div class="bottom">
    <div>兄弟节点div, +~选择器不能向前选择</div>
    <span class="prev">选择器span元素</span>
    <div>span后第一个兄弟节点div</div>
    <div>兄弟节点div
        <div class="small">子元素div</div>
    </div>
    <span>兄弟节点span,不可选</span>
    <div>兄弟节点div</div>
</div>

<script type="text/javascript">
    //相邻兄弟选择器
    //选取prev后面的第一个的div兄弟节点
    $(".prev + div").css("border", "3px groove blue");
</script>

<script type="text/javascript">
    //一般相邻选择器
    //选取prev后面的所有的div兄弟节点
    $(".prev ~ div").css("border", "3px groove blue");
</script>
</body>
</html>
