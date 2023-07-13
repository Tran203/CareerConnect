<%@page import="java.util.List"%>
<%
    List<String> skillsToImprove = (List<String>)request.getAttribute("skillsToImprove");
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assessment Result</title>
    <!-- Add your CSS styling here -->
</head>
<body>
    <h1>Assessment Result</h1>
    
    <div class="report">
        <h2>Report:</h2>
        
        <%
        if (skillsToImprove.isEmpty()) {
            out.println("<p>Congratulations! Your skills are in line with the requirements for your course.</p>");
        } else {
            out.println("<p>You should work on improving the following skills:</p>");
            out.println("<ul>");
            
            for (String skill : skillsToImprove) {
                out.println("<li>" + skill + "</li>");
                
                if (skill.equals("Problem-solving")) {
                    out.println("<p class='description'>Improve problem-solving skills by practicing logical thinking, breaking down complex problems into smaller steps, and seeking alternative solutions.</p>");
                } else if (skill.equals("Programming")) {
                    out.println("<p class='description'>Enhance programming skills by regularly coding, working on coding projects, and exploring different programming languages and frameworks.</p>");
                } else if (skill.equals("Communication")) {
                    out.println("<p class='description'>Develop communication skills by actively listening, expressing ideas clearly, and seeking feedback to improve verbal and written communication.</p>");
                } else if (skill.equals("Teamwork")) {
                    out.println("<p class='description'>Build teamwork skills by collaborating with others, actively participating in group projects, and effectively communicating and resolving conflicts within a team.</p>");
                } else if (skill.equals("Critical thinking")) {
                    out.println("<p class='description'>Sharpen critical thinking skills by analyzing information, evaluating different perspectives, and making well-reasoned decisions based on evidence and logical reasoning.</p>");
                }
            }
            
            out.println("</ul>");
        }
        %>
    </div>
</body>
</html>

