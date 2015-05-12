<%--
  Created by IntelliJ IDEA.
  User: roma
  Date: 18.04.15
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login page</title>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="/resources/css/style.css" media="all">

  <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>
  <script src="/resources/js/index.js"></script>
</head>

<body onload='document.loginForm.username.focus();'>

  <span href="#" class="button" id="toggle-login">Log in</span>

  <div id="login">
    <div id="triangle"></div>
    <h1>Log in</h1>
    <form class="login-form" action="j_spring_security_check" method="post">
      <input id="j_username" name="j_username" type="email" placeholder="Email" />
      <input id="j_password" name="j_password" type="password" placeholder="Password" />
      <input  type="submit" value="Login" />
    </form>
  </div>
</body>
</html>
