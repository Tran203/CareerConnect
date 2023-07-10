/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package app.web.careerconnect.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.careerconnect.bl.UserFacadeLocal;
import web.careerconnect.entities.User;

/**
 *
 * @author ntokozo
 */
public class CreateAccountServlet extends HttpServlet {
    @EJB
    private UserFacadeLocal ufl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get user basic login details
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        
        //common variables
        String url = "";
        
        //create user account
        User user = createUserAccount(email,password,role);
        ufl.create(user);
        
        //store user info according to their role
        if(role.equalsIgnoreCase("Student")){
            url = "student_pages/student_dashboard.html";
        }else if(role.equalsIgnoreCase("Mentor")){
            url = "mentor_pages/mentor_dashboard.html";
        }
        
        //request dispatcher
        RequestDispatcher disp = request.getRequestDispatcher(url);
        disp.forward(request, response);
        
    }

    private User createUserAccount(String email, String password, String role) {
        User u =  new User();
        
        //pass variables
        u.setEmail(email);
        u.setPassword(password);
        u.setRole(role);
        
        return u;
    }
}
