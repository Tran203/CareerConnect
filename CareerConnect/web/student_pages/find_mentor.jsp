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
                    <li><a href="./NavigationServlet.do?role=student_dashboard">Dashboard</a></li>
                    <li><a href="./NavigationServlet.do?role=profile">Profile</a></li>
                    <li><a href="./NavigationServlet.do?role=mentors">Mentors</a></li>
                    <li><a href="./NavigationServlet.do?role=jobs">Jobs</a></li>
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
            %>
            <div class="mentor-list">
                <div class="mentor-card">
                    <div class="mentor-info">
                        <h2>Mentor <%= mentor1.getFirstName()%> <%= mentor1.getLastName()%></h2>
                        <p>Field of Expertise: <%= mentor1.getExpertise()%></p>
                        <p>Experience: <%= mentor1.getExperience()%></p>
                        <p>Location: <%= mentor1.getLocation()%></p>
                        <div class="mentor-actions">
                            <a href="#" class="btn"><i class="fas fa-user-plus"></i> Request Mentorship</a>
                            <a href="#" class="btn"><i class="fas fa-envelope"></i> Send Message</a>
                        </div>
                    </div>
                </div>
                <% if (mentor2 != null) {%>
                <div class="mentor-card">
                    <div class="mentor-info">
                        <h2>Mentor <%= mentor2.getFirstName()%></h2>
                        <p>Field of Expertise: <%= mentor2.getExpertise()%></p>
                        <p>Experience: <%= mentor2.getExperience()%></p>
                        <p>Location: <%= mentor2.getLocation()%></p>
                        <div class="mentor-actions">
                            <a href="#" class="btn"><i class="fas fa-user-plus"></i> Request Mentorship</a>
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
