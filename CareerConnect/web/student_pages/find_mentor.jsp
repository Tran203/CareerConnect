<%@page import="java.util.List"%>
<%@page import="web.careerconnect.entities.Mentors"%>
<%
    List<Mentors> mentorList = (List<Mentors>) session.getAttribute("mentorList");
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
                    <li><a href="student_dashboard.jsp">Dashboard</a></li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">Mentors</a></li>
                    <li><a href="#">Jobs</a></li>
                    <li><a href="#">Logout</a></li>
                </ul>
            </nav>
        </header>

        <section class="find-mentor">
            <h1>Find a Mentor</h1>
            <%
                for (int i = 0; i < mentorList.size(); i++) {
                Mentors m = mentorList.get(i);
            %>
            <div class="mentor-list">
                <div class="mentor-card">
                    <div class="mentor-avatar">
                        <img src="avatar1.png" alt="Mentor Avatar">
                    </div>
                    <div class="mentor-info">
                        <h2>Mentor <%=m.getFirstName()%></h2>
                        <p>Field of Expertise</p>
                        <p>Experience: 5 years</p>
                        <p>Location: City, Country</p>
                        <div class="mentor-actions">
                            <a href="#" class="btn"><i class="fas fa-user-plus"></i> Request Mentorship</a>
                            <a href="#" class="btn"><i class="fas fa-envelope"></i> Send Message</a>
                        </div>
                    </div>
                </div>
                <div class="mentor-card">
                    <div class="mentor-avatar">
                        <img src="avatar2.png" alt="Mentor Avatar">
                    </div>
                    <div class="mentor-info">
                        <h2>Mentor <%=m.getFirstName()%></h2>
                        <p>Field of Expertise</p>
                        <p>Experience: 7 years</p>
                        <p>Location: City, Country</p>
                        <div class="mentor-actions">
                            <a href="#" class="btn"><i class="fas fa-user-plus"></i> Request Mentorship</a>
                            <a href="#" class="btn"><i class="fas fa-envelope"></i> Send Message</a>
                        </div>
                    </div>
                </div>
            </div>
                        <br><br>
            <%
                }
            %>

            <!-- -->

        </section>

        <footer>
            <p>&copy; 2023 CareerConnect. All rights reserved.</p>
        </footer>
    </body>
</html>
