<%--
  Created by IntelliJ IDEA.
  User: LENOVO-QH
  Date: 2016/4/28
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <!-- Page title -->
    <title>practice - Login</title>
    <!-- End of Page title -->
    <!-- Libraries -->
    <link type="text/css" href="css/login.css" rel="stylesheet" />
    <link type="text/css" href="css/smoothness/jquery-ui-1.7.2.custom.html" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/easyTooltip.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
    <!-- End of Libraries -->
    <style>

        .main{
            border-width:2px;
            border-style:solid;
            border-color:#888;
            width:200px;
            padding:20px;
            margin:10px;
        }
        div{float:left;}
    </style>
</head>
<body>
<div id="container">
    <div class="logo">
        <a href="#"><img src="http://img.mukewang.com/52da54ed0001ecfa04120172.jpg" alt=""  width=800px;height=50px /></a>
    </div>
    <div>
        <form action="LoginServlet" method="post">
            <p class="main">
                <label>用户名: </label>
                <input type=text id ="username" name="username" value="" />
                <br>
                <label>密码: </label>
                &nbsp&nbsp&nbsp<input type="password" name="password" id = "password" value="">
                <br>
                <input type="button" onclick=regtest() value="检查"/>
                <input type="submit" value="登录" class="login" style="cursor: pointer;"/>
                <a href="register.jsp"><input type="button" value="注册"/></a>
            </p>
            <script>
                function regtest(){
                    var re = new RegExp("^[A-Za-z][A-Za-z1-9_-]+$");
                    var1 = document.getElementById("username");
                    var str = var1.value;
                    if(re.test(str)==false){
                        alert("请以字母开头输入至少两位字母或数字");
                    }else{
                        alert("格式正确");
                    }
                }
            </script>
        </form>
    </div>
</div>
</body>
</html>
