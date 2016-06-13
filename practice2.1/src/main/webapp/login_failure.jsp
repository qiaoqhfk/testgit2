<%--
  Created by IntelliJ IDEA.
  User: LENOVO-QH
  Date: 2016/4/28
  Time: 15:17
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
</head>
<body>
<div id="container">
    <div class="logo">
        <a href="#"><img src="http://imgsrc.baidu.com/forum/w%3D580/sign=a32499a79a504fc2a25fb00dd5dce7f0/ccbf6c81800a19d8303491aa32fa828ba61e466d.jpg" alt="" /></a>
    </div>
    <div id="box">
        <h1 font color="red">用户名或密码错误!</h1>
        <br>
        <a href="login.jsp">返回登录</a>
    </div>
</div>
</body>
</html>
