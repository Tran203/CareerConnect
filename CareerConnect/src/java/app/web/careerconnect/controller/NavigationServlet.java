/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package app.web.careerconnect.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ntokozo
 */
public class NavigationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String navigate = request.getParameter("role");
        String url ="";
        
        if(navigate.equalsIgnoreCase("student_dashboard")){
            url = "student_pages/student_dashboard.jsp";
        }else if(navigate.equalsIgnoreCase("mentor_dashboard")){
            url = "mentor_pages/mentor_dashboard.jsp";
        }
        // FNaviaget to relevent page
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String navigate = request.getParameter("role");
        String url ="";
        
        if(navigate.equalsIgnoreCase("student_dashboard")){
            url = "student_pages/student_dashboard.jsp";
        }
        // FNaviaget to relevent page
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
