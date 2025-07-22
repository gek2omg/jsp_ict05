<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오후 1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>JSTL(JSP Standard Tag Library) - core 태그 - 변수지원 태그 set</h3>
<br><br>

<%--
   변수지원 태그 - <c:set var="변수명"  value="값" /> 태그
   var : 값을 지정할 EL 변수명을 지정한다.
   value : 변수의 값을 지정한다.
         1) 표현식 : <%= value %>
         2) EL : ${변수}  |  ${key} |  ${key.value}
         3) 정적인 문자열 : "문자열"
 --%>
<c:set var="p_code" value="lg" scope="request" />
<c:set var="p_name" value="상품명" scope="request" />
<c:set var="p_price" value="2500000" scope="request" />

<jsp:forward page="2_next.jsp" />
</body>
</html>
