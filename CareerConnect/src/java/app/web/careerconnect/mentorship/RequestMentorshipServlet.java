/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package app.web.careerconnect.mentorship;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import web.careerconnect.bl.MentorshipFacadeLocal;
import web.careerconnect.entities.Mentorship;
import web.careerconnect.entities.Students;

/**
 *
 * @author ntokozo
 */
public class RequestMentorshipServlet extends HttpServlet {
    @EJB
    private MentorshipFacadeLocal mfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //session
        HttpSession session = request.getSession(true);
        
        //get emails for the mentorship
        String mentorEmail = request.getParameter("mentorEmail");
        Students std = (Students)session.getAttribute("std");
        String stdEmail = std.getEmail();
        
        
        Mentorship m = createMentorship(mentorEmail,stdEmail);
        mfl.create(m);
        
        
        //request dispatcher
        RequestDispatcher disp = request.getRequestDispatcher("mentor_pages/find_mentor.jsp");
        disp.forward(request, response);
    }

    private Mentorship createMentorship(String mentorEmail, String stdEmail) {
        Mentorship m = new Mentorship();
        
        //pass
        m.setMentorEmail(mentorEmail);
        m.setStdEmail(stdEmail);
        m.setStatus("Waiting Approval");
        
        return m;
    }

}
