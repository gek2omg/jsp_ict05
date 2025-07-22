<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>좋아하는 과일</title>
</head>
<body>
<h3>좋아하는 과일</h3>
<%
    // list 생성, 과일들 추가(add 메서드)
    // List<자료형> list = new ArrayList<자료형>();
    List<String> list = new ArrayList<>();
    list.add("사과");
    list.add("바나나");
    list.add("수박");

    request.setAttribute("fruit", list);

    // 속성값을 jsp로 전달

    String viewPage = "4_el_next.jsp";
    RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
    dispatcher.forward(request, response);
%>
</body>
</html>
