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

<h2>内容筛选器</h2>
<h3>:contains/:has</h3>
<div class="left">
    <div class="div">
        <p>:contains</p>
    </div>
    <div class="div">
        <p>:contains</p>
    </div>
    <div class="div">
        <p>
            <span>:has</span>
        </p>
    </div>
    <div class="div">
        <p>:contains</p>
    </div>
</div>

<script type="text/javascript">
    //查找所有class='div'中DOM元素中包含"contains"的元素节点
    //并且设置颜色
    $(".div:contains(':contains')").css("color", "#CD00CD");
</script>

<script type="text/javascript">
    //查找所有class='div'中DOM元素中包含"span"的元素节点
    //并且设置颜色
    $(".div:has(span)").css("color", "blue");
</script>


<h3>:parent/:empty</h3>
<div class="left">
    <div class="aaron">
        <a>:parent</a>
    </div>
    <div class="aaron">
        <a>:parent</a>
    </div>
    <div class="aaron">
        <a>:parent</a>
    </div>
    <div class="aaron">
        <a></a>
    </div>
</div>
<script type="text/javascript">
    //选择所有包含子元素或者文本的a元素
    //增加一个蓝色的边框
    $("a:parent").css("border", "3px groove blue");
</script>

<script type="text/javascript">
    //找到a元素下面的所有空节点(没有子元素)
    //增加一段文本与边框
    $("a:empty").html(":empty1").css("border", "3px groove red");
</script>

<h2>可见性筛选选择器</h2>
<h3>:visible/:hidden</h3>
<div class="left">
    <div class="div">
        <a>display</a>
        <p id="div1" style="display:none;">display</p>
    </div>
    <div class="div">
        <a>width</a>
        <a>height</a>
        <p id="div2" style="width:0;height:0">width/height</p>
    </div>
    <div class="div">
        <a>visibility</a>
        <a>opacity</a>
        <p id="div3" style="visibility:hidden;opacity:0">visibility</p>
    </div>
</div>

<p id="show"></p>
<script type="text/javascript">
    function show (ele) {
        if (ele instanceof jQuery) {
            $("#show").html('元素的长度的 = ' + ele.length)
        } else {
            alert(ele+' 不是jQuery对象')
        }
    }
</script>


<script type="text/javascript">
    //查找id = div1的DOM元素,是否可见
    show( $('#div1:visible') );
</script>

<script type="text/javascript">
    //查找id = div2的DOM元素,是否可见
    show( $('#div2:visible') );
</script>

<script type="text/javascript">
    //查找id = div3的DOM元素,是否可见
    show(  $('#div3:visible') );
</script>

<script type="text/javascript">
    //查找id = div1的DOM元素,是否隐藏
    show( $('#div1:hidden'));
</script>

<script type="text/javascript">
    //查找id = div2的DOM元素,是否隐藏
    show($('#div2:hidden') );
</script>

<script type="text/javascript">
    //查找id = div3的DOM元素,是否隐藏
    show($('#div3:hidden') );
</script>
</body>
</html>
