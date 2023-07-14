<%@page import="web.careerconnect.entities.Students"%>
<%@page import="web.careerconnect.entities.Mentorship"%>
<%@page import="java.util.List"%>
<%@page import="web.careerconnect.entities.Mentors"%>
<%
    List<Mentors> mentorList = (List<Mentors>) session.getAttribute("mentorList");
    List<Mentorship> mList = (List<Mentorship>) session.getAttribute("mList");
    
    //std details
    Students std = (Students)session.getAttribute("std");
    String stdEmail = std.getEmail();
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./style/find_mentor.css">
  <title>Find Mentor</title>
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="./NavigationServlet.do?role=student_dashboard">Dashboard</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Mentors</a></li>
        <li><a href="#">Jobs</a></li>
        <li><a href="./LogoutServlet.do">Logout</a></li>
      </ul>
    </nav>
  </header>

  <section class="find-mentor">
    <h1>Find a Mentor</h1>
    <%
      for (int i = 0; i < mentorList.size(); i += 2) {
          Mentors mentor1 = mentorList.get(i);
          Mentors mentor2 = null;
          if (i + 1 < mentorList.size()) {
              mentor2 = mentorList.get(i + 1);
          }
          
          // Check if mentorship exists between student and mentor1
          boolean mentorshipExists1 = false;
          for (Mentorship mentorship : mList) {
              if (mentorship.getMentorEmail().equals(mentor1.getEmail()) && mentorship.getStdEmail().equals(stdEmail)) {
                  mentorshipExists1 = true;
                  break;
              }
          }
          
          // Check if mentorship exists between student and mentor2
          boolean mentorshipExists2 = false;
          if (mentor2 != null) {
              for (Mentorship mentorship : mList) {
                  if (mentorship.getMentorEmail().equals(mentor2.getEmail()) && mentorship.getStdEmail().equals(stdEmail)) {
                      mentorshipExists2 = true;
                      break;
                  }
              }
          }
    %>
    <div class="mentor-list">
      <% if (!mentorshipExists1) { %>
      <div class="mentor-card">
        <div class="mentor-info">
          <h2>Mentor <%= mentor1.getFirstName()%> <%= mentor1.getLastName()%></h2>
          <p>Field of Expertise: <%= mentor1.getExpertise()%></p>
          <p>Experience: <%= mentor1.getExperience()%></p>
          <p>Location: <%= mentor1.getLocation()%></p>
          <div class="mentor-actions">
            <a href="./RequestMentorshipServlet.do?mentorEmail=<%= mentor1.getEmail()%>" class="btn"><i class="fas fa-user-plus"></i> Request Mentorship</a>
            <a href="#" class="btn"><i class="fas fa-envelope"></i> Send Message</a>
          </div>
        </div>
      </div>
      <% } %>
      <% if (!mentorshipExists2 && mentor2 != null) { %>
      <div class="mentor-card">
        <div class="mentor-info">
          <h2>Mentor <%= mentor2.getFirstName()%></h2>
          <p>Field of Expertise: <%= mentor2.getExpertise()%></p>
          <p>Experience: <%= mentor2.getExperience()%></p>
          <p>Location: <%= mentor2.getLocation()%></p>
          <div class="mentor-actions">
            <a href="./RequestMentorshipServlet.do?mentorEmail=<%= mentor2.getEmail()%>" class="btn"><i class="fas fa-user-plus"></i> Request Mentorship</a>
            <a href="#" class="btn"><i class="fas fa-envelope"></i> Send Message</a>
          </div>
        </div>
      </div>
      <% } %>
    </div>
    <br><br>
    <%
      }
    %>
  </section>

  <footer>
    <p>&copy; 2023 CareerConnect. All rights reserved.</p>
  </footer>
</body>
</html>
