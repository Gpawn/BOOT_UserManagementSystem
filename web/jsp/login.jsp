<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/login.css">
    <style>

    </style>
</head>
<body>
<script src="../js/jquery-3.5.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<div class="container">
    <div class="row center-block block">
        <div class="col-md-4 leftblock">
            <div class="row title">
                <div class="col-md-6 col-md-offset-3">
                    <h3>登录</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <h5>客户管理系统</h5>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-md-offset-1 welcome">
                    <p>欢迎您来到客户管理系统，请登录您的账号！</p>
                </div>
            </div>
        </div>
        <div class="col-md-8 rightblock">
            <form>
                <div class="form-group" style="margin-top: 50px;">
                    <label>用户名：</label>
                    <input type="text" class="form-control" id="user" placeholder="请输入用户名：">
                </div>
                <div class="form-group">
                    <label>密码：</label>
                    <input type="password" class="form-control" id="password">
                </div>
                <div class="form-group" style="margin-top: 50px;">
                    <div class="col-md-4 col-md-offset-8">
                        <button type="submit" class="btn btn-default" style="width:80px;">登录</button>
                    </div>
                </div>
                <div class="row" style="margin-top:160px;">
                    <div class="col-md-6 col-md-offset-3">
                        <small class="text-center">还未注册？请在此<a href="#">注册</a></small>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
