<%@page import="web.careerconnect.entities.Students"%>
<%
    Students std = (Students)session.getAttribute("std");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="profile.css">
  <title>Profile</title>
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

  <section class="profile">
    <h1>My Profile</h1>
    <div class="profile-info">
      <h2>Personal Information</h2>
      <div class="profile-data">
        <label for="name">Name:</label>
        <span id="name"><%=std.getFirstName()%> <%=std.getLastName()%></span>
      </div>
      <div class="profile-data">
        <label for="email">Email:</label>
        <span id="email"><%=std.getEmail()%></span>
      </div>
      <div class="profile-data">
        <label for="student-number">Student Number:</label>
        <span id="student-number">111</span>
      </div>
      <div class="profile-data">
        <label for="field-of-interest">Field of Interest:</label>
        <span id="field-of-interest"><%=std.getInterest()%></span>
      </div>
      <div class="profile-data">
        <label for="education-background">Educational Background:</label>
        <span id="education-background"><%=std.getStudy()%></span>
      </div>
      <div class="profile-data">
        <label for="goal">Goal:</label>
        <span id="goal"><%=std.getGoal()%></span>
      </div>
    </div>

    <div class="update-profile">
      <h2>Update Profile</h2>
      <form action="#" method="post">
        <div class="form-group">
          <label for="name">Name:</label>
          <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
          <label for="field-of-interest">Field of Interest:</label>
          <input type="text" id="field-of-interest" name="field-of-interest" required>
        </div>
        <div class="form-group">
          <label for="education-background">Educational Background:</label>
          <input type="text" id="education-background" name="education-background" required>
        </div>
        <div class="form-group">
          <label for="goal">Goal:</label>
          <input type="text" id="goal" name="goal" required>
        </div>
        <button type="submit">Update</button>
      </form>
    </div>
  </section>

  <footer>
    <p>&copy; 2023 CareerConnect. All rights reserved.</p>
  </footer>
</body>
</html>

