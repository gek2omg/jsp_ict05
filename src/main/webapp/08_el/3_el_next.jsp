<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오전 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h2>방법1. 기존 표현식(Expression)</h2>
<%
  // 한극 안깨지게 처리
  request.setCharacterEncoding("utf-8");

  String strId = request.getParameter("user_id");
  String[] strHobby = request.getParameterValues("user_hobby");
%>
아이디 : <%=strId%><br>
취미 :
<%
for(int i=0; i< strHobby.length; i++) {
  out.print(strHobby[i]);
}
%><br>

<h2>방법2. EL(Expression Language) 적용 => 많이 적용</h2>
아이디 : ${param.user_id}<br>
취미 :
<c:forEach var="hobby" items="${paramValues.user_hobby}">
  ${hobby}<br>
</c:forEach><br>

<h2>방법2. EL(Expression Language) 적용 => 대괄호</h2>
아이디 : ${param["user_id"]}<br>
취미 : ${paramValues["user_hobby"]}<br>

</body>
</html>
