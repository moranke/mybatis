function submitQuery(){            //查询
    $("#mainForm").attr("action","/list.action");
    $("#mainForm").submit();
}
function submitDeleteById(id){      //单个删除
    $("#mainForm").attr("action","/deleteMessageById.action?id="+id);
    $("#mainForm").submit();
}
function submitDeleteBatch(){      //批量删除
    $("#mainForm").attr("action","deleteMessageBatch.action");
    $("#mainForm").submit();
}

