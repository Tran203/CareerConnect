/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package app.web.careerconnect.controller;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import web.careerconnect.bl.MentorsFacadeLocal;
import web.careerconnect.bl.StudentsFacadeLocal;
import web.careerconnect.bl.UsersFacadeLocal;
import web.careerconnect.entities.Mentors;
import web.careerconnect.entities.Students;
import web.careerconnect.entities.Users;

/**
 *
 * @author ntokozo
 */
public class CreateAccountServlet extends HttpServlet {
    @EJB
    private UsersFacadeLocal ufl;
    private StudentsFacadeLocal sfl;
    private MentorsFacadeLocal mfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //session
        HttpSession session = request.getSession(true);
        
        //get user basic login details
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        
        //common variables
        String url = "";
        
        //create user account
        Users user = createUserAccount(email,password,role);
        ufl.create(user);
        
        //store user info according to their role
        if(role.equalsIgnoreCase("Student")){
            url = "student_pages/student_dashboard.html";
            
            //get student details 
            String name = getName(request);
            String lastName = getLastName(request);
            
            //store the student to database
            Students std = createStudent(name,lastName);
            sfl.create(std);
            
            
            //pass details for log in 
            session.setAttribute("std", std);
            
        }else if(role.equalsIgnoreCase("Mentor")){
            url = "mentor_pages/mentor_dashboard.html";
            
            //get mentor details 
            String name = getName(request);
            String lastName = getLastName(request);
            
            //store mentor info to database
            Mentors m = createMentor(name,lastName);
            mfl.create(m);
            
            session.setAttribute("mentor", m);
        }
        
        //request dispatcher
        RequestDispatcher disp = request.getRequestDispatcher(url);
        disp.forward(request, response);
        
    }

    private Users createUserAccount(String email, String password, String role) {
        Users u =  new Users();
        
        //pass variables
        u.setEmail(email);
        u.setPassword(password);
        u.setType(role);
        
        return u;
    }

    private String getName(HttpServletRequest request) {
        String name = request.getParameter("firstName");
        
        return name;
    }

    private String getLastName(HttpServletRequest request) {
        String lastName = request.getParameter("lastName");
        
        return lastName;
    }

    private Students createStudent(String name, String lastName) {
        Students s = new Students();
        
        //pass
        s.setFirstName(lastName);
        s.setLastName(lastName);
        
        return s;
    }

    private Mentors createMentor(String name, String lastName) {
        Mentors m = new Mentors();
        
        ///
        m.setFirstName(name);
        m.setLastName(lastName);
        
        return m;
    }
}
