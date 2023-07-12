/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package app.web.careerconnect.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import web.careerconnect.bl.MentorsFacadeLocal;
import web.careerconnect.entities.Mentors;

/**
 *
 * @author ntokozo
 */
public class FindMentorServlet extends HttpServlet {
    @EJB
    private MentorsFacadeLocal mfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //session
        HttpSession session = request.getSession(true);
        
        List<Mentors> mentorList = mfl.findAll();
        
        //pass the list into session
        session.setAttribute("mentorList", mentorList);
        
        //request dispatcher
        RequestDispatcher disp = request.getRequestDispatcher("student_pages/find_mentor.jsp");
        disp.forward(request, response);
    }

}
