<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>Skills Assessment</title>
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

        <section class="skills-assessment">
            <h1>Skills Assessment</h1>
            <div class="assessment-form">
                <h2>Take the Assessment</h2>
                <form action="SkillsAssessmentServlet.do" method="post">
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
                    </div>
                    
                    
                    <div class="question">
                        <h1>Problem Solving</h1>
                        <p>The ability to write and understand programming code..</p>
                        <label>
                            Rate your skill level:
                            <select name="programingResponse">
                                <option value="0">No experience</option>
                                <option value="1">Beginner</option>
                                <option value="2">Intermediate</option>
                                <option value="3">Advanced</option>
                            </select>
                        </label>
                    </div>
                    
                    <div class="question">
                        <h1>Problem Solving</h1>
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
                    </div>
                    
                    <div class="question">
                        <h1>Problem Solving</h1>
                        <p>The ability to work collaboratively in a team environment..</p>
                        <label>
                            Rate your skill level:
                            <select name="teamworkResponse">
                                <option value="0">No experience</option>
                                <option value="1">Beginner</option>
                                <option value="2">Intermediate</option>
                                <option value="3">Advanced</option>
                            </select>
                        </label>
                    </div>
                    
                    
                    <div class="question">
                        <h1>Problem Solving</h1>
                        <p>The ability to think critically and make sound judgments.</p>
                        <label>
                            Rate your skill level:
                            <select name="criticalThinkungResponse">
                                <option value="0">No experience</option>
                                <option value="1">Beginner</option>
                                <option value="2">Intermediate</option>
                                <option value="3">Advanced</option>
                            </select>
                        </label>
                    </div>

                    <button type="submit" class="btn">Submit</button>
                </form>
            </div>
        </section>

        <footer>
            <p>&copy; 2023 CareerConnect. All rights reserved.</p>
        </footer>
    </body>
</html>
