<%-- 
    Document   : skill
    Created on : Jul 13, 2023, 5:49:17 AM
    Author     : ntokozo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Skills Assessment</title>
  <!-- Add your CSS styling here -->
  <link rel="stylesheet" href="styles/skills-assessment.css">
</head>
<body>
  <h1>Skills Assessment</h1>
  <form action="SkillAssessmentServlet" method="POST">
    <%-- Retrieve selected course from previous form or session --%>
    <%-- Replace "selectedCourse" with the actual attribute name --%>
    <%-- For example, if you stored the selected course in the session attribute "course", use ${sessionScope.course} --%>
    <input type="hidden" name="selectedCourse" value="selectedCourse">

    <%-- Iterate through the skills array to display questions --%>
    <%-- Replace "skills" and "skillDescriptions" with the actual variable names --%>
    <%-- Make sure the arrays are accessible in the JSP --%>
    <%
    String[] skills = {
        "Problem-solving",
        "Programming",
        "Communication",
        "Teamwork",
        "Critical thinking"
    };

    String[] skillDescriptions = {
        "The ability to identify and solve problems efficiently.",
        "The ability to write and understand programming code.",
        "The ability to effectively communicate ideas and information.",
        "The ability to work collaboratively in a team environment.",
        "The ability to think critically and make sound judgments."
    };

    for (int i = 0; i < skills.length; i++) {
        %>
        <h2><%= skills[i] %></h2>
        <p><%= skillDescriptions[i] %></p>
        <label for="rating_<%= i %>">
            Rate your skill level:
            <select name="rating_<%= i %>" id="rating_<%= i %>">
                <option value="0">No experience</option>
                <option value="1">Beginner</option>
                <option value="2">Intermediate</option>
                <option value="3">Advanced</option>
            </select>
        </label>
        <% if (i != skills.length - 1) { %>
            <button type="button" onclick="showNextSkill(<%= i + 1 %>)">Next</button>
        <% } %>
        <% if (i == skills.length - 1) { %>
            <button type="submit">Submit</button>
        <% } %>
    <% } %>

    <script>
        function showNextSkill(index) {
            document.getElementById("rating_" + (index - 1)).parentNode.style.display = "none";
            document.getElementById("rating_" + index).parentNode.style.display = "block";
        }
    </script>
  </form>
</body>
</html>

