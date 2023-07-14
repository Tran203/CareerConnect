<%-- 
    Document   : assessment
    Created on : Jul 13, 2023, 11:54:13 PM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../style/assessment.css">
        <title>Skills Assessment</title>
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

        <section class="skills-assessment">
            <h1>Skills Assessment</h1>
            <div class="assessment-form">
                <h2>Take the Assessment</h2>
                <form action="../SkillsAssessmentServlet.do" method="post" id="assessmentForm">
                    <div class="question">
                        <h1>Problem Solving</h1>
                        <p>The ability to identify and solve problems efficiently.</p>
                        <label>
                            Rate your skill level:
                            <select name="problemSolvingResponse">
                                <option value="0">No experience</option>
                                <option value="1">Beginner</option>
                                <option value="2">Intermediate</option>
                                <option value="3">Advanced</option>
                            </select>
                        </label>
                        <button type="button" class="btn" id="nextButton1">Next</button>
                    </div>

                    <div class="question">
                        <h1>Programming</h1>
                        <p>The ability to write and understand programming code.</p>
                        <label>
                            Rate your skill level:
                            <select name="programingResponse">
                                <option value="0">No experience</option>
                                <option value="1">Beginner</option>
                                <option value="2">Intermediate</option>
                                <option value="3">Advanced</option>
                            </select>
                        </label>
                        <button type="button" class="btn" id="nextButton2">Next</button>
                    </div>
                    <div class="question">
                        <h1>Communication</h1>
                        <p>The ability to effectively communicate ideas and information.</p>
                        <label>
                            Rate your skill level:
                            <select name="communicationResponse">
                                <option value="0">No experience</option>
                                <option value="1">Beginner</option>
                                <option value="2">Intermediate</option>
                                <option value="3">Advanced</option>
                            </select>
                        </label>
                        <button type="button" class="btn" id="nextButton3">Next</button>
                    </div>

                    <div class="question">
                        <h1>Teamwork</h1>
                        <p>The ability to work collaboratively in a team environment.</p>
                        <label>
                            Rate your skill level:
                            <select name="teamworkResponse">
                                <option value="0">No experience</option>
                                <option value="1">Beginner</option>
                                <option value="2">Intermediate</option>
                                <option value="3">Advanced</option>
                            </select>
                        </label>
                        <button type="button" class="btn" id="nextButton4">Next</button>
                    </div>

                    <div class="question">
                        <h1>Critical thinking</h1>
                        <p>The ability to think critically and make sound judgments.</p>
                        <label>
                            Rate your skill level:
                            <select name="criticalThinkingResponse">
                                <option value="0">No experience</option>
                                <option value="1">Beginner</option>
                                <option value="2">Intermediate</option>
                                <option value="3">Advanced</option>
                            </select>
                        </label>
                        <button type="submit" class="btn" id="submitButton">Submit</button>
                    </div>
                </form>
            </div>
        </section>

        <footer>
            <p>&copy; 2023 CareerConnect. All rights reserved.</p>
        </footer>

        <script>
            const questions = document.querySelectorAll('.question');
            const nextButtons = document.querySelectorAll('.btn');
            const submitButton = document.getElementById('submitButton');
            const form = document.getElementById('assessmentForm');
            let currentQuestion = 0;

            function showQuestion(index) {
                questions.forEach((question, idx) => {
                    if (idx === index) {
                        question.style.display = 'block';
                    } else {
                        question.style.display = 'none';
                    }
                });

                if (index === questions.length - 1) {
                    nextButtons[index].style.display = 'none';
                    submitButton.style.display = 'block';
                } else {
                    nextButtons[index].style.display = 'block';
                    submitButton.style.display = 'none';
                }
            }

            function showNextQuestion() {
                currentQuestion++;
                showQuestion(currentQuestion);
            }

            nextButtons.forEach((button, index) => {
                button.addEventListener('click', showNextQuestion);
            });

            showQuestion(currentQuestion);
        </script>
    </body>
</html>

