<%@page import="java.util.List"%>
<%@page import="web.careerconnect.entities.Students"%>
<%
    List<Students> stdList = (List<Students>) session.getAttribute("stdList");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./style/find_mentee.css">
        <title>Mentee Matching</title>
    </head>
    <body>
        <header>
            <nav>
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">Students</a></li>
                    <li><a href="#">Jobs</a></li>
                    <li><a href="#">Logout</a></li>
                </ul>
            </nav>
        </header>

        <section class="mentee-matching">
            <h1>Mentee Matching</h1>
            <%
                for(int i = 0; i < stdList.size(); i += 2) {
                    Students std1 = stdList.get(i);
                    Students std2 = null;
                    if (i + 1 < stdList.size()) {
                        std2 = stdList.get(i + 1);
                    }
            %>
            <div class="mentees">
                <div class="mentee">
                    <h2><%=std1.getFirstName()%> <%=std1.getLastName()%></h2>
                    <p>Field: Computer Science</p>
                    <p>Interests: Web Development, Artificial Intelligence</p>
                    <p>Goal: Gain industry experience</p>
                    <a href="#" class="btn">Choose Mentee</a>
                    <a href="#" class="btn">View Profile</a>
                </div>
                <% if (std2 != null) { %>
                <div class="mentee">
                    <h2><%=std2.getFirstName()%> <%=std2.getLastName()%></h2>
                    <p>Field: Data Science</p>
                    <p>Interests: Machine Learning, Data Analytics</p>
                    <p>Goal: Career transition</p>
                    <a href="#" class="btn">Choose Mentee</a>
                    <a href="#" class="btn">View Profile</a>
                </div>
                <% } %>
            </div>
            <% } %>
        </section>

        <footer>
            <p>&copy; 2023 CareerConnect. All rights reserved.</p>
        </footer>
    </body>
</html>
