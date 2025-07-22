<%--
  Created by IntelliJ IDEA.
  User: ict
  Date: 2025-07-14 (월)
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String m_id = request.getParameter("m_id");
    String m_pwd = request.getParameter("m_pwd");
    String m_email = request.getParameter("m_email");
    String m_major = request.getParameter("m_major");
    String m_job = request.getParameter("m_job");
    String[] m_hobby = request.getParameterValues("m_hobby");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul>
    <li>아이디 : <%=m_id%>
    </li>
    <li>비밀번호 : <%=m_pwd%>
    </li>
    <li>이메일 : <%=m_email%>
    </li>
    <li>전공 : <%=m_major%>
    </li>
    <li>직업 : <%=m_job%>
    </li>
    <%
        if (m_hobby != null) {
            for (String m_h : m_hobby) {
    %>
    <li><%= m_h %>
    </li>
    <%
        }
    } else {
    %>
    <li>선택한 과일이 없습니다.</li>
    <%
        }
    %>
</ul>
</body>
</html>
