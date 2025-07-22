<%@ page import="useBean.MemberInfo" %><%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오후 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  MemberInfo dto = (MemberInfo)request.getAttribute("memberInfo");
%>
<%=dto.getId()%>
<%=dto.getPassword()%>
<%=dto.getName()%>

${memberInfo.id}
${password}
${getName}
</body>
</html>
