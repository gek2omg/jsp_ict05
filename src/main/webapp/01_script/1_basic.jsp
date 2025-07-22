<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>P176 스크립트 요소</title>
</head>
<body>
<h3>스크립트 요소</h3>
<h3>1. 스크립트릿 - 자바코드를 삽입</h3>
<ul>
    <li>- HTML 태그안에 JAVA 코드를 삽입</li>
    <li><%-- --%></li>
</ul>
<%
    String name = "아이유";
    int age = 30;
    String id = "iu";
    String password = "iu_1234";
    // out : 내장객체로서, 서블릿으로 변환시 컴파일 시점에 자동으로 객체 생성함
    out.println("name : " + name);
    out.println("id : " + id);
    out.println("password : " + password);
%>
<br><br>
<hr>
<br><br>
<h3>2. 표현식(Expression)</h3>
<ul>
    <li>- html 에서 값을 출력한다. 값은 변수나 메서드가 올 수 있다.</li>
    <li>- 문장의 끝에 ';' 을 붙이면 에러 발생</li>
    <li>- 스크립트 안에서는 out.print(); 사용가능</li>
</ul>
<%-- <%= 변수 %> --%>
<br><br>
[2. 실행결과(Expression)] <br>
이름 : <%= name%><br>
나이 : <%= age%><br>
아이디 : <%= id%><br>
비밀번호 : <%= password%><br>
<br><br>
<hr>
<br><br>

<h3>3. 선언부(Declaration)</h3>
<ul>
    <li>- 변수, 자바메서드를 선언한다.</li>
</ul>
<%--
<%!
public 반환형 멧드명(매개변수) {
    자바코드;
}
%>
--%>
<%!
    public int divide(int a, int b) {
        return a / b;
    }
%>

== 실행결과 ==<br>
8 / 4 = <%= divide(8,4)%>
</body>
</html>
