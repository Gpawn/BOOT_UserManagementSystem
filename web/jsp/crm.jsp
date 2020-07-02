<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客户管理页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/crm.css">
</head>
<body>
<script src="../js/jquery-3.5.1.min.js"></script>
<script>
    $(document).ready(function(){
        $('.dropdown').mouseenter(function(){
            $(this).children('ul').show();
        });
        $('.dropdown').mouseleave(function(){
           $(this).children('ul').hide()
        });
    })
</script>
    <div class="container-fluid" style="height:500px;">
        <div class="row bar">
            <div class="col-xs-3">
                <h4 class="ver">BOOT客户管理系统v1.0</h4>
            </div>
            <div class="col-xs-3 col-xs-offset-6">
                <ul class="nav nav-pills ver">
                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-envelope"></span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right">

                        </ul>
                    </li>
                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-tasks"></span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right">

                        </ul>
                    </li>
                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-bell"></span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right">

                        </ul>
                    </li>
                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-user"></span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li >
                                <a href="#">
                                    <span class="glyphicon glyphicon-info-sign"></span>
                                    用户：user
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="glyphicon glyphicon-cog"></span>
                                    系统设置
                                </a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="#">
                                    <span class="glyphicon glyphicon-log-out"></span>
                                    退出登录
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 leftbox">
                <div class="row searchbar">
                    <div class="input-group" style="width:80%;margin-left:10%;">
                        <input type="text" class="form-control" placeholder="查询内容">
                        <span class="input-group-btn">
                            <button class="btn btn-info">search</button>
                        </span>
                    </div>
                </div>
                <div class="row" style="margin-top:50px;">
                    <div class="list-group">
                        <a href="#" class="list-group-item active glyphicon glyphicon-th-list">
                            客户管理
                        </a>
                        <a href="#" class="list-group-item glyphicon glyphicon-phone-alt">
                            客户拜访
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xs-8 rightbox">
                <div class="page-header">
                    <h1>客户管理</h1>
                </div>
                <div class="row center-block">
                    <form class="form-inline" style="border:#f7f7f7 1px solid;padding:10px;border-radius: 3px;">
                        <div class="form-group">
                            <label>客户名称：</label>
                            <input type="text" class="form-control" id="custName" style="width:150px;">
                        </div>
                        <div class="form-group">
                            <label>客户来源：</label>
                            <select class="form-control" style="width:100px;">
                                <option value=""></option>
                                <option value="">1</option>
                                <option value="">2</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>所属行业：</label>
                            <select class="form-control" style="width:100px;">
                                <option value=""></option>
                                <option value="">1</option>
                                <option value="">2</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>客户级别：</label>
                            <select class="form-control" style="width:100px;">
                                <option value=""></option>
                                <option value="">1</option>
                                <option value="">2</option>
                            </select>
                        </div>
                        <div class="btn btn-primary">查询</div>
                    </form>
                </div>
                <div class="row center-block">
                    <button class="btn btn-primary">新建</button>
                </div>
                <div class="row center-block" style="height:586px;">
                    <table align="center" class="table table-striped table-bordered">
                        <tr>
                            <td colspan="8">客户信息列表</td>
                        </tr>
                        <tr>
                            <th>编号</th>
                            <th>客户名称</th>
                            <th>客户来源</th>
                            <th>客户所属行业</th>
                            <th>客户级别</th>
                            <th>固定电话</th>
                            <th>手机</th>
                            <th>操作</th>
                        </tr>

                        <tr>
                            <td>1</td>
                            <td>2</td>
                            <td>3</td>
                            <td>4</td>
                            <td>5</td>
                            <td>6</td>
                            <td>7</td>
                            <td>
                                <button class="btn btn-primary">修改</button>
                                <button class="btn btn-danger">删除</button>
                            </td>
                        </tr>


                    </table>
                </div>
                <div class="row">
                    <div class="col-xs-6 col-xs-offset-6">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="First">
                                        <span aria-hidden="true">首页</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">上一页</span>
                                    </a>
                                </li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">下一页</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" aria-label="Last">
                                        <span aria-hidden="true">尾页</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
