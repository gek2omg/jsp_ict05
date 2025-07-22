<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>JSTL(JSP Standard Tag Library) - core 태그 - if</h3>
<%--
    core 태그를 선언하지 않으면 true/false 가 정상작동되지 않는다.
    <c:if test="조건"  var="변수명"   [scope="범위"]>
    ..
    </c:if>

    if(true) {}와 동일
--%>
<c:if test="${true}">
    조건식이 true 이므로 무조건 실행
</c:if>
<br>
<c:if test="${false}">
    조건식이 false 이므로 무조건 실행안함
</c:if>

<!-- 쿼리스트링 => http://localhost/jsp_ict05/09_jstl/3_jstl.jsp?name=hong&age=30&kind=soju
     쿼리스트링으로 URL 실행 =>
     쿼리스트링 => http://localhost/jsp_ict05/09_jstl/3_jstl.jsp?name=hong&age=30&kind=soju
-->
<c:if test="${not empty param.name}">이름 : ${param.name}</c:if>
<c:if test="${not empty param.age}">나이 : ${param.age}</c:if>
<c:if test="${not empty param.kind}">뭐 : ${param.kind}</c:if>

<!-- hong은 15세이므로 bear를 살수 없습니다.-->
<!--
쿼리스트링 =>
http://localhost/jsp_ict05/09_jstl/3_jstl.jsp?name=hong&age=15&kind=bear
-->
<c:if test="${param.age <= 19}">
    hong은 15세이므로 bear를 살수 없습니다.
</c:if>
</body>
</html>
