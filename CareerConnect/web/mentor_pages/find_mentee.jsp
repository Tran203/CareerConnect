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
    <style>
        /* Add popup styles here */
        .popup-card {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            z-index: 9999;
        }

        .popup-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
        }

        .popup-content h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .popup-content p {
            margin-bottom: 8px;
        }

        .popup-content a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            margin-top: 10px;
        }
    </style>
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
        for (int i = 0; i < stdList.size(); i += 2) {
            Students std1 = stdList.get(i);
            Students std2 = null;
            if (i + 1 < stdList.size()) {
                std2 = stdList.get(i + 1);
            }
    %>
    <div class="mentees">
        <div class="mentee">
            <h2><%= std1.getFirstName()%> <%= std1.getLastName()%></h2>
            <p>Field: Computer Science</p>
            <p>Interests: <%= std1.getInterest() %></p>
            <p>Goal: <%= std1.getGoal() %></p>
            <a href="#" class="btn">Choose Mentee</a>
            <a href="#" class="btn view-profile">View Profile</a>


            <div class="popup-card">
                <div class="popup-content">
                    <h2>Mentee Profile</h2>
                    <p><strong>Name:</strong> <%= std1.getFirstName() %> <%= std1.getLastName() %></p>
                    <p><strong>Email:</strong> <%= std1.getEmail() %></p>
                    <p><strong>Educational Background:</strong> <%= std1.getStudy() %></p>
                    <a href="#" class="btn download-cv">Download CV</a>
                    <a href="#" class="btn close-popup">Close</a>
                </div>
            </div>

        </div>
        <% if (std2 != null) {%>
        <div class="mentee">
            <h2><%= std2.getFirstName()%> <%= std2.getLastName()%></h2>
            <p>Field: Data Science</p>
            <p>Interests: <%= std2.getInterest() %></p>
            <p>Goal: <%= std2.getGoal() %></p>
            <a href="#" class="btn">Choose Mentee</a>
            <a href="#" class="btn view-profile">View Profile</a>

            <div class="popup-card">
                <div class="popup-content">
                    <h2>Mentee Profile</h2>
                    <p><strong>Name:</strong> <%= std2.getFirstName() %> <%= std2.getLastName() %></p>
                    <p><strong>Email:</strong> <%= std2.getEmail() %></p>
                    <p><strong>Educational Background:</strong> <%= std2.getStudy() %></p>
                    <a href="#" class="btn download-cv">Download CV</a>
                    <a href="#" class="btn close-popup">Close</a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
    <% }%>
</section>

<footer>
    <p>&copy; 2023 CareerConnect. All rights reserved.</p>
</footer>

<!-- Add popup card here -->


<script>
    // JavaScript code for handling the popup functionality
    document.addEventListener("DOMContentLoaded", function () {
        const menteeCards = document.querySelectorAll(".mentee");
        const popupCards = document.querySelectorAll(".popup-card");
        const menteeName = document.getElementById("menteeName");
        const menteeEmail = document.getElementById("menteeEmail");
        const menteeEducation = document.getElementById("menteeEducation");
        const closePopupButtons = document.querySelectorAll(".close-popup");

        menteeCards.forEach(function (card, index) {
            const viewProfileButton = card.querySelector(".view-profile");
            const closePopupButton = card.querySelector(".close-popup");

            viewProfileButton.addEventListener("click", function (event) {
                event.preventDefault();
                openPopup(index);
            });

            closePopupButton.addEventListener("click", function () {
                closePopup(index);
            });
        });

        function openPopup(index) {
            const name = menteeCards[index].querySelector("h2").innerText;
            const email = menteeCards[index].querySelector("p:nth-child(3)").innerText;
            const education = menteeCards[index].querySelector("p:nth-child(4)").innerText;

            menteeName.innerText = name;
            menteeEmail.innerText = email;
            menteeEducation.innerText = education;

            popupCards[index].style.display = "block";
        }

        function closePopup(index) {
            popupCards[index].style.display = "none";
        }
    });
</script>

</body>
</html>
