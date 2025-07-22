<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오후 1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>상품정보</h3>
<%
    request.setCharacterEncoding("utf-8");
%>
상품코드 : ${p_code}<br>
상품코드 : ${p_name}<br>
상품코드 : ${p_price}<br>
</body>
</html>
