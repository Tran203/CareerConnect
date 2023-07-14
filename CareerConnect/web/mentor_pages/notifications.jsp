<%@page import="web.careerconnect.entities.Mentorship"%>
<%@page import="java.util.List"%>
<%@page import="web.careerconnect.entities.Students"%>
<%
    List<Mentorship> mList = (List<Mentorship>) session.getAttribute("mList");
    List<Students> stdList = (List<Students>) session.getAttribute("stdList");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./style/notifications.css">
        <title>Mentorship Requests</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f9f9f9;
                margin: 0;
                padding: 0;
            }

            header {
                background-color: #333;
                color: #fff;
                padding: 10px;
            }

            nav ul {
                list-style: none;
                display: flex;
                justify-content: flex-end;
            }

            nav ul li {
                margin-right: 10px;
            }

            nav ul li a {
                color: #fff;
                text-decoration: none;
            }

            section.notifications {
                padding: 20px;
            }

            h1 {
                font-size: 24px;
                margin-bottom: 20px;
            }

            .request-card {
                background-color: #fff;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 20px;
                margin-bottom: 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .request-info h2 {
                font-size: 18px;
                margin-bottom: 10px;
            }

            .request-actions {
                display: flex;
                gap: 10px;
            }

            .btn {
                display: inline-block;
                padding: 10px 20px;
                background-color: #333;
                color: #fff;
                border: none;
                border-radius: 5px;
                text-decoration: none;
                cursor: pointer;
            }

            .accept-button {
                background-color: #4caf50;
            }

            .decline-button {
                background-color: #f44336;
            }

            footer {
                background-color: #333;
                color: #fff;
                padding: 10px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <header>
            <nav>
                <ul>
                    <li><a href="./NavigationServlet.do?role=mentor_dashboard">Dashboard</a></li>
                    <li><a href="#">Mentees</a></li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="./LogoutServlet.do">Logout</a></li>
                </ul>
            </nav>
        </header>

        <section class="notifications">
            <h1>Mentorship Requests</h1>
            <% for (Mentorship mentorship : mList) {
                    if (mentorship.getStatus().equals("Waiting Approval")) {
                        String stdEmail = mentorship.getStdEmail();
                        Students student = null;
                        for (Students std : stdList) {
                            if (std.getEmail().equals(stdEmail)) {
                                student = std;
                                break;
                            }
                        }
                        if (student != null) {
            %>
            <div class="request-card">
                <div class="request-info">
                    <h2><%= student.getFirstName()%> <%= student.getLastName()%></h2>
                    <p>Field of Study: <%= student.getStudy()%></p>
                    <p>Goal: <%= student.getGoal()%></p>
                    <p>Field of Interest: <%= student.getInterest()%></p>
                </div>
                <!-- ... Request actions ... -->
                <div class="request-actions">
                    <form action="./AcceptRequestServlet.do" method="post">
                        <input type="hidden" name="mentorEmail" value="<%= mentorship.getMentorEmail()%>">
                        <input type="hidden" name="stdEmail" value="<%= mentorship.getStdEmail()%>">
                        <button type="submit" class="btn accept-button">Accept</button>
                    </form>
                    <form action="./DeclineRequestServlet.do" method="post">
                        <input type="hidden" name="mentorEmail" value="<%= mentorship.getMentorEmail()%>">
                        <input type="hidden" name="stdEmail" value="<%= mentorship.getStdEmail()%>">
                        <button type="submit" class="btn decline-button">Decline</button>
                    </form>
                </div>
            </div>
            <% }
                    }
                }%>
        </section>

        <footer>
            <p>&copy; 2023 CareerConnect. All rights reserved.</p>
        </footer>
    </body>
</html>
