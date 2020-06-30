<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/register.css">
</head>
<body>
<script src="../js/jquery-3.5.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<div class="container">
    <div class="row center-block block">
        <form class="form-horizontal">
            <div class="row topblock">
                <div class="col-md-2 col-md-offset-5">
                    <h2>注&nbsp;&nbsp;册</h2>
                </div>
            </div>
            <div class="row bottomblock">
                <div class="form-group col-sm-10 col-sm-offset-2" style="margin-top:50px;">
                    <label class="col-sm-2 control-label col-sm-offset-2">账号：</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="RegUser" aria-describedby="RegUserStatus"/>
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <span id="RegUserStatus" class="sr-only">(success)</span>
                    </div>
                </div>
                <div class="form-group col-sm-10 col-sm-offset-2">
                    <label class="col-sm-2 control-label col-sm-offset-2">昵称：</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="RegName"/>
                    </div>
                </div>
                <div class="form-group col-sm-10 col-sm-offset-2">
                    <label class="col-sm-2 control-label col-sm-offset-2">密码：</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="RegPassword"/>
                    </div>
                </div>
                <div class="form-group col-sm-10 col-sm-offset-2">
                    <label class="col-sm-2 control-label col-sm-offset-2">重复密码：</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="RepeatPassword"/>
                    </div>
                </div>
                <div class="form-group col-sm-10 col-sm-offset-2" style="margin-top:50px;">
                    <div class="col-sm-offset-4 col-sm-2">
                        <button type="reset" class="btn btn-primary" style="width:100px;">重置</button>
                    </div>
                    <div class="col-sm-offset-2 col-sm-2">
                        <button type="submit" class="btn btn-primary" style="width:100px;">注册</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
