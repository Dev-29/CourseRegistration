<%-- 
    Document   : home.jsp
    Created on : 19-Sep-2022, 3:22:28 pm
    Author     : Devab
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Registration Report</title>
        <link rel="stylesheet" href="index.css"/>
    </head>
    <body>
        <h1>Course Registration Report</h1>
        <form action="register" method="post">
            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vit", "root", "Devabhiram@2003");
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery("select * from course");
                    while (rs.next()) {
            %>
            <table>
                <tr>
                    <th>Registration Number</th>
                    <th>Name</th>
                    <th>Courses</th>
                    <th>Credits</th>
                </tr>
                <tr>
                    <td><%= rs.getString("id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getInt("num_courses") %></td>
                    <td><%= rs.getInt("credits") %></td>
                </tr>
            </table>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {
                        rs.close();
                        stmt.close();
                        conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
            <a href="register.jsp">Register Courses</a>
        </form>
    </body>
</html>
