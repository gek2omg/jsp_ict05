<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-15 (화)
  Time: 오후 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 1.useBean 액션태그를 이용해서 객체생성 -->
<%--<jsp:useBean id="자바빈이름" class="패키지명.클래스명" />--%>
<!-- 클래스명 참조변수 = new 클래스명(); -->
<jsp:useBean id="member" class="useBean.MemberInfo" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- 2.setProperty => setter -->
<%--<jsp:setProperty name="멤버변수명" property="id명(즉 참조변수)" value="값 또는 표현식"/>--%>


<!-- 3.getProperty => getter -->
<jsp:getProperty name="" property="" />
</body>
</html>
