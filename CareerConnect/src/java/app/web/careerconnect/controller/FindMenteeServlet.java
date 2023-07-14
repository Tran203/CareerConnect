/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package app.web.careerconnect.controller;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import web.careerconnect.bl.MentorshipFacadeLocal;
import web.careerconnect.bl.StudentsFacadeLocal;
import web.careerconnect.entities.Mentorship;
import web.careerconnect.entities.Students;

/**
 *
 * @author ntokozo
 */
public class FindMenteeServlet extends HttpServlet {

    @EJB
    private StudentsFacadeLocal mfl;
    @EJB
    private MentorshipFacadeLocal mfl2;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //session
        HttpSession session = request.getSession(true);

        List<Students> stdList = mfl.findAll();
        List<Mentorship> mList = mfl2.findAll();

        //pass the list into session
        session.setAttribute("stdList", stdList);
        session.setAttribute("mList", mList);

        //request dispatcher
        RequestDispatcher disp = request.getRequestDispatcher("mentor_pages/find_mentee.jsp");
        disp.forward(request, response);
    }
}
