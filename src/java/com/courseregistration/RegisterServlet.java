/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.courseregistration;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.*;
/**
 *
 * @author Devab
 */

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) 
            throws ServletException, IOException {
        
        res.setContentType("text/html");
        PrintWriter out = res.getWriter(); 
        
        String id = req.getParameter("regno");
        String name = req.getParameter("name");
        String [] temp = req.getParameterValues("course_credits");
        int courses_registered = temp.length;
        
        int total_credits = 0;
        int[] course_credits = new int[courses_registered];
        for (int i = 0; i < courses_registered; i++) {
            course_credits[i] = Integer.parseInt(temp[i]);
            total_credits += course_credits[i];
        }
        
        if (total_credits < 16 || total_credits > 26) {
            out.println("<h1>Credits should be between 16 and 27 only!");
            RequestDispatcher rd = req.getRequestDispatcher("register.jsp");
            rd.include(req, res);
        } else {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vit", "root", "Devabhiram@2003");
                
                String SQL = "INSERT INTO course VALUES (?, ?, ?, ?)";
                PreparedStatement ps = con.prepareStatement(SQL);
                ps.setString(1, id);
                ps.setString(2, name);
                ps.setInt(3, courses_registered);
                ps.setInt(4, total_credits);
                
                int rows = ps.executeUpdate();
                
                if (rows > 0) {
                    System.out.println("Inserted!");
                    RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
                    rd.forward(req, res);
                }
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
