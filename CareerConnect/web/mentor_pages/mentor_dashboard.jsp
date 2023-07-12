<%@page import="web.careerconnect.entities.Mentors"%>
<%
    Mentors mentor = (Mentors)session.getAttribute("mentor");
    
    String name = mentor.getFirstName();
    String lastName = mentor.getLastName();
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./style/dashboard.css">
  <title>Mentor Dashboard</title>
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="./index.html">Home</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Students</a></li>
        <li><a href="#">Jobs</a></li>
        <li><a href="#">Logout</a></li>
      </ul>
    </nav>
  </header>

  <section class="dashboard">
    <h1>Welcome, Mentor <%=name%> <%=lastName%>!</h1>

    <div class="cards">
      <div class="card">
        <h2>Mentee Matching</h2>
        <p>View profiles of mentees seeking guidance in your area of expertise and choose to mentor specific students.</p>
        <a href="FindMenteeServlet.do" class="btn">View Profiles</a>
      </div>

      <div class="card">
        <h2>Virtual Meetings</h2>
        <p>Schedule virtual meetings or discussions with mentees through integrated video conferencing tools.</p>
        <a href="schedule.html" class="btn">Schedule Meetings</a>
      </div>

      <div class="card">
        <h2>Resources and Materials</h2>
        <p>Access mentorship resources, industry insights, and recommended readings to enhance the mentorship experience.</p>
        <a href="#" class="btn">Access Resources</a>
      </div>

      <div class="card">
        <h2>Q&A and Forums</h2>
        <p>Participate in discussions, answer students' questions, and share valuable advice in the mentorship community.</p>
        <a href="reply.html" class="btn">Join Discussions</a>
      </div>
    </div>
  </section>

  <footer>
    <p>&copy; 2023 CareerConnect. All rights reserved.</p>
  </footer>
</body>
</html>
