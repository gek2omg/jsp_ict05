<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오전 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체 - request 객체</title>
</head>
<body>
<h3>내장객체 - request 객체</h3>
<form action="3_el_next.jsp" method="post" name="userForm">
    <table border="1" cellspacing="0" cellpadding="10">
        <tr>
            <th align="right">아이디 :</th>
            <td><input type="text" name="user_id" size="30" autofocus></td>
        </tr>
        <tr>
            <th align="right">취미 :</th>
            <td>
                <input type="checkbox" name="user_hobby" value="cook">요리
                <input type="checkbox" name="user_hobby" value="swimmint">수영
                <input type="checkbox" name="user_hobby" value="reading">독서
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="전송">
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
