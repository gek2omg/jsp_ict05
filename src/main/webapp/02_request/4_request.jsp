<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-14 (월)
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>나이인증</title>
</head>
<body>
<form action="4_request_send.jsp" method="get">
  나이 : <input type="text" name="user_age" size="3"><br>
  이름 : <input type="text" name="user_name" size="30"><br>
  이메일 : <input type="text" name="user_email" size="50"><br>
  <input type="submit" value="인증">
</form>
</body>
</html>
