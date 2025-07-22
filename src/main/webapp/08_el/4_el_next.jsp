<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-22 (화)
  Time: 오전 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list 출력</title>
</head>
<body>
<h3>request 의 list 출력</h3>
<h4>방법1. 기존 표현식(Expression)</h4>
<%
    // 값 받아온다.
    List<String> fruit = (List<String>) request.getAttribute("fruit");
%>
<h4>방법2. EL 태그</h4>
EL 태그 :
${fruit[0]}<br>
${fruit[1]}<br>
${fruit[2]}<br>

<!-- 배열 -->
배열 :
<%
    for(int i=0; i< fruit.size(); i++) {
        out.print(fruit.get(i));
    }
%><br><br>

<!-- scope 출력 -->
scope :
${requestScope.fruit[0]}<br>
${requestScope.fruit[1]}<br>
${requestScope.fruit[2]}<br>
</body>
</html>
