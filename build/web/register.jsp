<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="jakarta.serlvet.*"%>
<%@page import="jakarta.servlet.http.*"%>
<%@page import="jakarta.servlet.http.annotation.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Registration</title>
    </head>
    <body>
        <h1>Course Registration</h1>
        <form action="RegisterServlet" method="POST">
            Reg. Number: <input type="text" name="regno"><br>
            Name: <input type="text" name="name"><br><br>
            <input type="checkbox" id="course1" name="course_credits" value="3">
            <label for="course1"> 1. CS312 Advanced Java (3 Credits)</label><br>
            <input type="checkbox" id="course2" name="course_credits" value="3">
            <label for="course2"> 2. CS223 Advanced C Programming (3 Credits) </label><br>
            <input type="checkbox" id="course3" name="course_credits" value="4">
            <label for="course3"> 3. MT443 Discrete Mathematics (4 Credits) </label><br>
            <input type="checkbox" id="course4" name="course_credits" value="4">
            <label for="course4"> 4. CS243 Operating Systems (4 Credits) </label><br>
            <input type="checkbox" id="course5" name="course_credits" value="4">
            <label for="course5"> 5. CS332 Applied Cyrptography and Network Security (4 Credits) </label><br>
            <input type="checkbox" id="course6" name="course_credits" value="4">
            <label for="course6"> 6. CS111 Software Engineering (4 Credits) </label><br>
            <input type="checkbox" id="course7" name="course_credits" value="2">
            <label for="course7"> 7. ST255 Soft Skills (2 Credits) </label><br>
            <input type="checkbox" id="course8" name="course_credits" value="2">
            <label for="course8"> 8. HM110 Foreign Language (2 Credits) </label><br>
            <input type="checkbox" id="course9" name="course_credits" value="2">
            <label for="course9"> 9. CS184 Game Theory (2 Credits) </label><br>
            <input type="checkbox" id="course10" name="course_credits" value="2">
            <label for="course10"> 10. MT391 Linear Algebra (2 Credits) </label><br><br>
            <button>Submit</button>
        </form>
    </body>
</html>
