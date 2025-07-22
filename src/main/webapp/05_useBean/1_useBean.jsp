<%@ page import="useBean.MemberInfo" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-15 (화)
  Time: 오후 1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>자바빈을 이용한 객체 생성</title>
</head>
<body>
<%
    MemberInfo member = new MemberInfo();
    member.setId("gek2omg");
    member.setPassword("12345678");
    member.setName("김동관");
    member.setEmail("gek2omg@gmail.com");
    member.setAddress("강남수");
    member.setRegisterDate(new Date());

    out.print(member.getId()+"<br>");
    out.print(member.getPassword()+"<br>");
    out.print(member.getName()+"<br>");
    out.print(member.getEmail()+"<br>");
    out.print(member.getAddress()+"<br>");
    out.print(member.getRegisterDate()+"<br>");

    request.setAttribute("info", member);

    MemberInfo info2 = (MemberInfo)request.getAttribute("info");
%>
[Front 출력]
<%=info2.getId()%><br>
<%=info2.getName()%><br>
<%=info2.getEmail()%><br>
<%=info2.getAddress()%><br>
<%=info2.getRegisterDate()%><br>


</body>
</html>
