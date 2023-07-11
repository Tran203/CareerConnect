<%@page import="web.careerconnect.entities.Students"%>
<%
    Students std = (Students)session.getAttribute("std");
    
    String name = std.getFirstName();
    String lastName = std.getLastName();
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./style/dashboard.css">
  <title>Student Dashboard</title>
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="../index.html">Home</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Mentors</a></li>
        <li><a href="#">Jobs</a></li>
        <li><a href="#">Logout</a></li>
      </ul>
    </nav>
  </header>

  <section class="dashboard">
    <h1>Welcome, <%=name%> <%=lastName%>!</h1>
    <div class="cards">
      <div class="card">
        <h2>Profile</h2>
        <p>View and update your profile information.</p>
        <a href="#" class="btn">View Profile</a>
      </div>
      <div class="card">
        <h2>Mentors</h2>
        <p>Connect with mentors in your field of interest.</p>
        <a href="find_mentor.html" class="btn">Find Mentors</a>
      </div>
      <div class="card">
        <h2>Jobs</h2>
        <p>Browse and apply for job opportunities.</p>
        <a href="browse_job.html" class="btn">Browse Jobs</a>
      </div>
      <div class="card">
        <h2>Events</h2>
        <p>Discover upcoming events and workshops.</p>
        <a href="events.html" class="btn">Explore Events</a>
      </div>
      <div class="card">
        <h2>Skills Assessment</h2>
        <p>Evaluate your current skills and identify areas for improvement.</p>
        <a href="#" class="btn">Take Assessment</a>
      </div>
      <div class="card">
        <h2>Discussions and Forums</h2>
        <p>Engage in discussions with mentors and fellow students.</p>
        <a href="discussion.html" class="btn">Join Discussions</a>
      </div>
    </div>
  </section>

  <footer>
    <p>&copy; 2023 CareerConnect. All rights reserved.</p>
  </footer>
</body>
</html>

