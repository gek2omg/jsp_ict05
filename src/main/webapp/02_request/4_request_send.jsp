<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-14 (월)
  Time: 오전 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");

  int iAge = request.getParameter("user_age");
  String strName = request.getParameter("user_name");
  String strEmail = request.getParameter("user_email");
%>
</body>
</html>
