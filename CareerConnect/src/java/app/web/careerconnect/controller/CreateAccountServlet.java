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
    @EJB
    private StudentsFacadeLocal sfl;
    @EJB
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
        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");

        //create user account
        Users user = createUserAccount(email, password, role);
        ufl.create(user);

        //store user info according to their role
        if (role.equalsIgnoreCase("Student")) {
            url = "student_pages/student_dashboard.jsp";

            //get student details 
            String interest = request.getParameter("interest");
            String study = request.getParameter("study");
            String cv = request.getParameter("cv");

            //store the student to database
            Students std = createStudent(email, name, lastName, interest, study, cv);
            sfl.create(std);

            //pass details for log in 
            session.setAttribute("std", std);

        } else if (role.equalsIgnoreCase("Mentor")) {
            url = "mentor_pages/mentor_dashboard.jsp";

            //get mentor details
            String location = request.getParameter("location");
            String expertise = request.getParameter("expertise");
            String exprience = request.getParameter("exprience");
            String education = request.getParameter("education");;
            String availability = request.getParameter("availability");
            String bio = request.getParameter("bio");

            //store mentor info to database
            Mentors m = createMentor(email,name,lastName,location,expertise,exprience, education, availability, bio);
            mfl.create(m);

            session.setAttribute("mentor", m);
        }

        //request dispatcher
        RequestDispatcher disp = request.getRequestDispatcher(url);
        disp.forward(request, response);

    }

    private Users createUserAccount(String email, String password, String role) {
        Users u = new Users();

        //pass variables
        u.setEmail(email);
        u.setPassword(password);
        u.setType(role);

        return u;
    }

    private Students createStudent(String email, String name, String lastName, String interest, String study, String cv) {
        Students s = new Students();

        //pass
        s.setEmail(email);
        s.setFirstName(name);
        s.setLastName(lastName);
        s.setInterest(interest);
        s.setStudy(study);
        s.setCv("None");

        return s;
    }

    private Mentors createMentor(String email, String name, String lastName, String location, String expertise, String exprience, String education, String availability, String bio) {
        Mentors m = new Mentors();

        //
        m.setEmail(email);
        m.setFirstName(name);
        m.setLastName(lastName);

        m.setLocation(location);
        m.setExpertise(expertise);
        m.setExperience(exprience);
        m.setEducation(education);
        m.setAvailability(availability);
        m.setBio(bio);
        m.setMentorshipApproach("Approach");

        return m;
    }
}
