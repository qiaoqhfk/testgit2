<%--
  Created by IntelliJ IDEA.
  User: LENOVO-QH
  Date: 2016/5/6
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
</head>
<body>
    这里是注册页面
    <br>
        <div>
            <form action="RegisterServlet" method="post">
                <p class="reg">
                    <label>用户名: </label>
                    <input type=text id ="newusername" name="newusername" value="" />
                    <br>
                    <label>密码: </label>
                    &nbsp&nbsp&nbsp<input type="password" name="newpassword" id = "newpassword" value="">
                    <br>
                    <input type="submit" value="注册" class="register" style="cursor: pointer;"/>
                </p>
            </form>
        </div>
    <a href="login.jsp">返回登录</a>
</body>
</html>
