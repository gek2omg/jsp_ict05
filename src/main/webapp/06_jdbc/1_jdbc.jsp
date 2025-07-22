<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--
JDBC(Java DataBase Connectivity)
- 자바에서 데이터베이스와 통신할 때 사용하는 API
- DBMS와의 통신을 담당하는 자바클래스
- ojdbc6.jar 파일 필요 => WEB-INF/lib
-->
<%
    // DB 연결
    // 데이터 베이스 접속 정보
    String dbUrl = "jdbc:oracle:thin:@localhost:1521:xe";
    String dbID = "scott_05";       // 계정
    String dbPassword = "tiger";    // 비밀번호

    Connection conn = null;         // 오라클 연결
    PreparedStatement pstmt = null; // SQL 문장
    ResultSet rs = null;            // SQL 실행결과(SELECT 절에서만 사용)

    /**
     * -- 회원정보 테이블 삭제
     * DROP TABLE member_tbl;
     *
     * -- 회원정보 테이블 생성
     * CREATE TABLE member_tbl(
     *    mem_id      number(3)       PRIMARY KEY,  -- PK(UNIQUE, NOT NULL)
     *    mem_name   varchar2(50)   NOT NULL,      -- 필수
     *    mem_age      number(3),
     *    mem_email   varchar2(60)   NOT NULL UNIQUE,   -- 필수, 중복허용x
     *    mem_address varchar2(100)
     * );
     *
     * -- 데이터 확인
     * -- DESC member_tbl;  -- 테이블구조 확인  => DBeaver에서 지원안함
     * SELECT * FROM member_tbl;
     */
%>
<h3>Member 정보</h3>
<table border="1" cellspacing="0" cellpadding="5">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>age</th>
        <th>email</th>
        <th>address</th>
    </tr>
    <%
        try {
            // 1.jdbc 드라이버 로딩
            // Class.forName(); => 지정한 클래스 정보를 담고 있는 클래스 인스턴스를 구해주는 기능을 제공한 메서드
            Class.forName("oracle.jdbc.driver.OracleDriver"); // WEB-INF/lib 폴더에 jdbc6.jar 파일 추가

            // 2.DB 연결
            conn = DriverManager.getConnection(dbUrl, dbID, dbPassword);

            // 3.SQL 작성 => PrepareStatement 작성
      /*
         - SQL 쿼리의 틀을 미리 생성해놓고, 값을 나중에 지정
         - 값변동을 자동으로 하기 위함
         - 간결한 코드를 위해 사용
         - 보안
         - set 계열의 메서드를 사용해서 물음표를 대체할 값을 지정해 주어야 한다.
         - 첫번째 물음표의 인덱스는 1이며, 이후 물음표의 인덱스는 나오는 순서대로 인덱스 값이 1씩 증가한다.
         - ?를 ''로 감싸지 않는다.
      */
            String query = "SELECT * FROM member_tbl ORDER BY mem_id";

            // 4.쿼리 실행
        /*   ResultSet executeQuery()  =>  select문
         - SELECT문의 실행결과를 ResultSet 객체에 담아서 리턴한다.
         - 따라서 ResultSet에 제공하는 메서드를 사용해서 결과값을 읽어올 수 있다.
         - next() 메서드를 사용해서 SELECT 결과의 존재여부를 확인할 수 있다.

         int executeUpdate() => I, U, D
         - Insert, Update, Delete 쿼리를 실행할 때 사용하며, 실행결과로 변경된 레코드의 건수를 리턴한다.
         - SQL문 실행후 테이블의 내용만 변경되는 경우 사용하며, 변경건수를 int형으로 리턴한다.
         - 결과가 0:실패, 1:성공
      */
            pstmt = conn.prepareStatement(query);

            // ResultSet에 조회결과를 담는다.
            rs = pstmt.executeQuery();

            // 5.쿼리 실행 결과를 출력 => ResultSet 에 데이터가 존재하면
            while(rs.next()) {
                String strId = rs.getString("mem_id");
                String strName = rs.getString("mem_name");
                String strAge = rs.getString("mem_age");
                String strEmail = rs.getString("mem_email");
                String strAddress = rs.getString("mem_address");
    %>
    <tr>
        <td><%=strId%></td>
        <td><%=strName%></td>
        <td><%=strAge%></td>
        <td><%=strEmail%></td>
        <td><%=strAddress%></td>
    </tr>
    <%
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    %>
</table>
</body>
</html>
