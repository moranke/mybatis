/**
 * Created by lvdia on 2018/6/4.
 */
var xmlHttp = new XMLHttpRequest();

function getMore() {
    var content=$("#keyWord").attr("value");
    // var content=document.getElementById("keyWord").value;
    // alert(content);

    // var content=document.getElementById("keyword").value;
    if(content == ""){
        clearContent();
    }else
    {

        // alert(content);
        var url="search?keyWord="+ encodeURI(content);
        xmlHttp.open("GET",url,true); //true 表示js脚本会在send（）方法之后继续执行 而不会等待服务器的响应
        xmlHttp.onreadystatechange=callBack;

        xmlHttp.send(null);


    }
}
function  callBack() {
    if(xmlHttp.readyState==4&&xmlHttp.status==200){
            var result=xmlHttp.responseText;
            var json=eval("("+result+")");
            // alert(json);
        setContent(json);
    }
}
function  setContent(contents) {
    clearContent();
    var  size=contents.length;
    for(var i=0;i<size;i++){
        var tbody=$("#contentTableBody");
         var textNode=contents[i];
        tbody.append("<tr><td border='0' bgcolor='#fffafa'  onmouseover= mouseOver() onmouseout= mouseOut(i) onclick=click()>"+textNode+"</td></tr>");
    }
}
function mouseOver() {
    var tr=$("#contentTableBody:nth-child(1)");
    tr.children[1].className='mouseOverStyle';
}
function mouseOut() {
    var tbody=$("#contentTableBody");
    tbody.children[i+1].children("td").className='mouseOutStyle';
}
function click() {
    this.className='clickStyle';
}
function clearContent() {
    var tbody=$("#contentTableBody");
    tbody.empty();
}

// var tr=document.createElement("tr");
// var td=document.createElement("td");
// td.setAttribute("border","0");
// td.setAttribute("bgcolor","#fffafa");
// td.onmouseover=function () {
//     this.className="mouseOver";
// }
// td.onmouseout=function () {
//     this.className="mouseOut";
// }
// td.onclick=function () {
//
// }