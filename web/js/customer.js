// window.onload = function(){
//     alert("ss");
// }

function deleteconfirm(id) {
    if (confirm("确实要删除该记录吗？")) {
        location.href = "<%=basePath%>cust/delete?id=" + id;
    }
}

function insert() {
    location.href = "<%=basePath%>cust/insert.jsp";
}

function retrieve() {
    location.href = "<%=basePath%>cust/find";
}// 进入回收站
function upload() {
    location.href = "<%=basePath%>cust/upload.jsp";
}

function download() {
    location.href = "<%=basePath%>cust/download";
}

function selectall() {//全选
    var a = f2.checkList.length;
    if (a != undefined) {
        for (i = 0; i < a; i++)
            f2.checkList[i].checked = true;
    } else
        f2.checkList.checked = true;
}

function unselectall() {//取消全选
    var a = f2.checkList.length;
    if (a != undefined) {
        for (i = 0; i < a; i++)
            f2.checkList[i].checked = false;
    } else
        f2.checkList.checked = false;
}

function delchoose() {
    if (confirm("确实要删除所选吗？")) {
        document.f2.action = "<%=basePath%>cust/delecteList";
    }
}

function moveToRetrieve() {
    if (confirm("确实要将选择的记录移到回收站吗？")) {
        document.f2.action = "<%=basePath%>cust/retrieve";
    }
}
