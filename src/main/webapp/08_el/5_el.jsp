<%@ page import="useBean.MemberInfo" %><%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오후 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  MemberInfo dto = new MemberInfo();

  dto.setId("jamesD");
  dto.setPassword("1234");
  dto.setName("gek2omg");
  dto.setAddress("서울");

  request.setAttribute("memberInfo", dto);

  String viewPage = "5_el_next.jsp";
  RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
  dispatcher.forward(request, response);
%>
</body>
</html>
