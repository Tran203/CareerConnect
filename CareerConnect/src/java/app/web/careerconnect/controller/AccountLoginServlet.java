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
public class AccountLoginServlet extends HttpServlet {

    @EJB
    private UsersFacadeLocal ufl;
    @EJB
    private StudentsFacadeLocal sfl;
    @EJB
    private MentorsFacadeLocal mfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //session
        HttpSession session = request.getSession(true);
        //common variables
        String url = "";

        //get user basic login details
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        //find user account
        if(email.equalsIgnoreCase("admin@faculty.com")) {
            url = "admin/admin.html";
            
        } else {
            Users user = ufl.findAccount(email, password);

            if (user != null) {
                if (user.getType().equalsIgnoreCase("Student")) {
                    url = "student_pages/student_dashboard.jsp";

                    //get the student info
                    Students std = sfl.findStudentUsingEmail(email);

                    //pass info to the session
                    session.setAttribute("std", std);
                } else if (user.getType().equalsIgnoreCase("Mentor")) {
                    url = "mentor_pages/mentor_dashboard.jsp";

                    //get mentor's info
                    Mentors m = mfl.findMentorUsingEmail(email);

                    //pass info to the session
                    session.setAttribute("mentor", m);
                }
            } else {
                //account does not exist
                url = "error_pages/account_not_found.jsp";
            }
        }

        //request dispatcher
        RequestDispatcher disp = request.getRequestDispatcher(url);
        disp.forward(request, response);
    }
}
