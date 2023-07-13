<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style/forms.css">

        <title>CareerConnect - Registration</title>
    </head>
    <body>
        <header>
            <nav>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="admin/admin.html">About</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>
            </nav>
        </header>

        <section class="hero">
            <div class="hero-content">
                <h1>Welcome to CareerConnect Registration</h1>
            </div>
        </section>

        <section class="registration">
            <div class="registration-options">
                <button class="option active" data-form="student">Student</button>
                <button class="option" data-form="mentor">Mentor</button>
            </div>

            <div class="form-container">
                <form id="student-form" class="form active" action="CreateAccountServlet.do" method="POST">
                    <h2>Student Registration</h2>
                    <input type="text" name="name" placeholder="First Name" required>
                    <input type="text" name="lastName" placeholder="Last Name" required>
                    <input type="text" name="student-number" id="student-number" placeholder="Student Number" required>
                    <input type="email" name="email" id="email" placeholder="Email Address" required>
                    <input type="password" name="password" placeholder="Password" required>

                    
                    <input type="text" name="educational-background" id="educational-background" placeholder="Educational background" list="education-list" required>
                    <datalist id="education-list">
                        <option value="Diploma in Computer Science"></option>
                        <option value="Diploma in Informatics"></option>
                        <option value="Diploma in Information Technology"></option>
                        <option value="Diploma in Computer Systems Engineering"></option>
                    </datalist>

                    
                    <input type="text" name="field-of-interest" id="field-of-interest" placeholder="Field of interest" list="field-list" required>
                    <datalist id="field-list">
                        <!-- Options will be dynamically populated based on the selected educational background -->
                    </datalist>

                    <input type="text" name="goal" id="goal" list="goal-list" placeholder="Your goal" required>
                    <datalist id="goal-list">
                        <option value="Career exploration"></option>
                        <option value="Mentorship"></option>
                        <option value="Job search"></option>
                        <option value="Skill development"></option>
                        <option value="Networking"></option>
                    </datalist>

                    <label for="resume-cv">Upload your CV/Resume (Accepted formats: .pdf, .doc, .docx)</label>
                    <input type="file" name="resume-cv" id="resume-cv" accept=".pdf,.doc,.docx">

                    <input type="hidden" name="role" value="Student">
                    <button type="submit">Register as Student</button>
                </form>



                <form id="mentor-form" class="form" action="CreateAccountServlet.do" method="POST">
                    <h2>Mentor Registration</h2>
                    <input type="text" name="name" placeholder="First Name" required>
                    <input type="text" name="lastName" placeholder="Last Name" required>
                    <input type="email" name="email" placeholder="Email Address" required>
                    <input type="password" name="password" placeholder="Password" required>
                    <input type="text" name="location" placeholder="Location (City, Province)" required list="location-options">
                    <datalist id="location-options">
                        <option value="Eastern Cape">Eastern Cape</option>
                        <option value="Free State">Free State</option>
                        <option value="Gauteng">Gauteng</option>
                        <option value="KwaZulu-Natal">KwaZulu-Natal</option>
                        <option value="Limpopo">Limpopo</option>
                        <option value="Mpumalanga">Mpumalanga</option>
                        <option value="Northern Cape">Northern Cape</option>
                        <option value="North West">North West</option>
                        <option value="Western Cape">Western Cape</option>
                    </datalist>

                    <input type="text" name="field-of-expertise" placeholder="Field of Expertise" required>
                    <input type="text" name="industry-experience" placeholder="Industry Experience" required list="industry-experience-options">
                    <datalist id="industry-experience-options">
                        <option value="Less than 1 year">
                        <option value="1-3 years">
                        <option value="3-5 years">
                        <option value="5+ years">
                    </datalist>
                    <input type="text" name="educational-background" placeholder="Educational Background" required>

                    <input type="text" name="availability" placeholder="Availability" list="availability-options" required>
                    <datalist id="availability-options">
                        <option value="Monday to Friday, 9am-5pm">
                        <option value="Weekends only">
                        <option value="Evenings after 6pm">
                        <option value="Flexible schedule">
                    </datalist>
                    <div class="textarea-container">
                        <textarea name="mentor-bio" placeholder="Mentor's Bio"></textarea>
                        <textarea name="mentorship-approach" placeholder="Mentorship Approach" required></textarea>
                    </div>


                    <input type="hidden" name="role" value="Mentor">
                    <button type="submit">Register as Mentor</button>
                </form>


            </div>
        </section>

        <footer>
            <p>&copy; 2023 CareerConnect. All rights reserved.</p>
        </footer>

        <script>
            const studentNumberInput = document.getElementById('student-number');
            const emailInput = document.getElementById('email');

            studentNumberInput.addEventListener('input', () => {
                const studentNumber = studentNumberInput.value;
                const email = `${studentNumber}@tut4life.ac.za`;
                emailInput.value = email;
            });

            const educationInput = document.getElementById('educational-background');
            const fieldInput = document.getElementById('field-of-interest');
            const fieldOptions = document.getElementById('field-list');

            educationInput.addEventListener('change', () => {
                const selectedEducation = educationInput.value;
                fieldOptions.innerHTML = '';

                if (selectedEducation === 'Diploma in Computer Science') {
                    fieldOptions.innerHTML += `
      <option value="Software Development"></option>
      <option value="Data Science"></option>
      <option value="Cybersecurity"></option>
    `;
                } else if (selectedEducation === 'Diploma in Informatics') {
                    fieldOptions.innerHTML += `
      <option value="Web Development"></option>
      <option value="Database Management"></option>
      <option value="Business Analysis"></option>
    `;
                } else if (selectedEducation === 'Diploma in Information Technology') {
                    fieldOptions.innerHTML += `
      <option value="Network Administration"></option>
      <option value="IT Support"></option>
      <option value="Cloud Computing"></option>
    `;
                } else if (selectedEducation === 'Diploma in Computer Systems Engineering') {
                    fieldOptions.innerHTML += `
      <option value="Embedded Systems"></option>
      <option value="Robotics"></option>
      <option value="IoT Development"></option>
    `;
                }
            });
        </script>
        <script src="script/registration.js"></script>


    </body>
</html>

