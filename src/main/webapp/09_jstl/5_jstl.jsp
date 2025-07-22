<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오후 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>JSTL(JSP Standard Tag Library) - core 태그 - forEach 태그</h3>

<%--
   forEach 태그는 배열, ArrayList, Map에 저장되어 있는 값들을 순차적으로 처리할 때 사용한다.
   자바의 for, do-while문을 대신해서 사용할 수 있다.

   <c:forEach var="개별변수명(=DTO의 참조변수)" items="${=ArrayList의 참조변수}" >  // var="개별항목" items="${복수항목}
      ${참조변수.멤버변수}  또는 ${참조변수.멤버메서드}
   </c:forEach>   ==> 게시판 목록

   <c:forEach var="i" begin="1" end="10" [step="1"]>
      ${i}
   </c:forEach>
 --%>
<c:forEach var="i" begin="1" end="10" step="1">
    ${i}
</c:forEach>
<hr>
<c:forEach var="i" begin="1" end="10" step="2">
    ${i}
</c:forEach>
</body>
</html>
