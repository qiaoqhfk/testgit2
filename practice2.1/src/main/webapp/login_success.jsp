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
</head>
<body>
<div id="container">
    <div class="logo">
        <a href="#"><img src="http://img.mukewang.com/52da54ed0001ecfa04120172.jpg" alt=""  width=1330px;height=100px /></a>
    </div>
    <div id="box">
        <%
            String loginUser = "";
            loginUser = request.getParameter("username");

            %>
        欢迎您<font color="red"><%=loginUser %></font>,登录成功！
        <br>
        <a href="login.jsp">返回登录</a>
    </div>
</div>
</body>
</html>
