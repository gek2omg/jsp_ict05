<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-14 (월)
  Time: 오전 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>클라이언트 정보 및 서버정보 읽기</title>
</head>
<body>
<h3>내장객체  - request 객체</h3>
request 란 내장객체로서, 자료형이 HttpServletRequest 이다.<br>
컬파일 시점에 객체생성을 한다.<br>
HttpServletRequest request = new HttpServletRequest();<br>
클라이언트의 요청저보를 저장한다.<br><br>
<%
  out.print("서버 : " + request.getServerName() + "<br>");
  out.print("서버포트 : " + request.getServerPort() + "<br>");
  out.print("요청방식 : " + request.getMethod() + "<br>");
  out.print("서버프로토콜 : " + request.getProtocol() + "<br>");
  out.print("URL : " + request.getRequestURL() + "<br>");
  out.print("컨텍스트패스 : " + request.getContextPath() + "<br>");
  out.print("URI : " + request.getRequestURI() + "<br>");
%>
</body>
</html>
