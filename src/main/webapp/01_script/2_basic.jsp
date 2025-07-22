<%@ page import="static java.lang.System.out" %><%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-11 (금)
  Time: 오전 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>*** 방법1. 1부터 10까지의 합을 스크립트릿으로 출력 ***</h3>
1부터 10까지의 합 :
<%
    int result = 0;
    for (int i = 0; i < 11; i++) {
        result += i;
    }
    out.print(result);
%>
<br>

<h3>*** 방법2. 1부터 10까지의 합을 표현식으로 출력 ***</h3>
1부터 10까지의 합 : <%= (10 * (10 + 1)) / 2 %>
<br>

<h3>*** 방법3. 1부터 10까지의 합을 선언부으로 출력 ***</h3>
<%!
    public int sum(int x) {
        int result = 0;
        for (int i = 0; i <= x; i++) {
            result += i;
        }
        return result;
    }
%>
1부터 10까지의 합 : <%=sum(10)%>
<br>
</body>
</html>
