<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-11 (금)
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--    String name = "아이유";--%>
<%--    int age = 30;--%>
<%--    String id = "iu";--%>
<%--    String password = "iu_1234";--%>
<%
    String name = "아이유";
    int age = 30;
    String id = "iu";
    String password = "iu_1234";
%>
<table border="1" cellspacing="0" cellpadding="10">
    <tr>
        <td>이름</td>
        <td><% out.print(name); %></td>
    </tr>
    <tr>
        <td>나이</td>
        <td><% out.print(age); %></td>
    </tr>
    <tr>
        <td>아이디</td>
        <td><% out.print(id); %></td>
    </tr>
    <tr>
        <td>비밀번호</td>
        <td><% out.print(password); %></td>
    </tr>
</table>
</body>
</html>
