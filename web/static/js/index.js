/**
 * Created by lvdia on 2018/6/4.
 */
function getMore() {
    var content=$("#keyword").attr("value");
    // var content=document.getElementById("keyword").value;
    if(content == ""){
        return;
    }else
    {
        alert(content);
        var request = new XMLHttpRequest();
    }
}