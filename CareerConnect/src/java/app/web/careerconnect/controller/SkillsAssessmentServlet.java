/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package app.web.careerconnect.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ntokozo
 */
public class SkillsAssessmentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {//String selectedCourse = request.getParameter("selectedCourse");
        String selectedCourse = "Diploma in Computer Science";
        
        //Get reponses & Retrieve skill ratings submitted by the student
        int[] ratings = new int[5];
        List<String> responses = new ArrayList<>(Arrays.asList("problemSolvingResponse", "programingResponse", "communicationResponse", "teamworkResponse", "criticalThinkungResponse"));
        for(int i = 0; i < responses.size(); i++){
            int rating = Integer.parseInt(request.getParameter(responses.get(i)));
            ratings[i] = rating;
        }
        
         // Determine ideal skill point range based on the selected course
        int[] idealRange = getIdealSkillRange(selectedCourse);

        // Compare skill ratings with the ideal range
        List<String> skillsToImprove = new ArrayList<>();
        for (int i = 0; i < 5; i++) {
            if (ratings[i] < idealRange[i]) {
                skillsToImprove.add(getSkillName(i));
            }
        }

        // Generate report or feedback for the student
        //String report = generateReport(skillsToImprove);

        // Set the report as an attribute to be displayed in the next page
        //request.setAttribute("report", report);
        request.setAttribute("skillsToImprove", skillsToImprove);

        // Forward to the result page
        RequestDispatcher dispatcher = request.getRequestDispatcher("student_pages/student_dashboard.jsp");
        dispatcher.forward(request, response);
    }

    private int[] getIdealSkillRange(String selectedCourse) {
        // Implement the logic to retrieve the ideal skill point range based on the selected course
        // Return the appropriate array of ideal skill points
        // Example:
        if(selectedCourse.equals("Diploma in Computer Science")) {
            return new int[]{3, 2, 2, 1, 2};
        } else if (selectedCourse.equals("Diploma in Informatics")) {
            return new int[]{2, 3, 1, 2, 1};
        } else if (selectedCourse.equals("Diploma in Information Technology")) {
            return new int[]{2, 1, 3, 3, 2};
        } else if (selectedCourse.equals("Diploma in Computer Systems Engineering")) {
            return new int[]{3, 2, 2, 2, 3};
        }
        return new int[]{};
    }

    private String getSkillName(int index) {
        // Implement the logic to retrieve the skill name based on the index
        // Return the appropriate skill name
        // Example:
        switch (index) {
            case 0:
                return "Problem-solving";
            case 1:
                return "Programming";
            case 2:
                return "Communication";
            case 3:
                return "Teamwork";
            case 4:
                return "Critical thinking";
            default:
                return "";
        }
    }
    
}
