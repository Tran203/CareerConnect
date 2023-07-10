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
        <li><a href="login.html">Login</a></li>
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
        <input type="text" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>
        <!-- Additional student-specific fields can be added here -->
        <input type="hidden" name="role" value="Student">
        <button type="submit">Register as Student</button>
      </form>

      <form id="mentor-form" class="form" action="CreateAccountServlet.do" method="POST">
        <h2>Mentor Registration</h2>
        <input type="text" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>
        <!-- Additional mentor-specific fields can be added here -->
        <input type="hidden" name="role" value="Mentor">
        <button type="submit">Register as Mentor</button>
      </form>
    </div>
  </section>

  <footer>
    <p>&copy; 2023 CareerConnect. All rights reserved.</p>
  </footer>

  <script src="script/registration.js"></script>
</body>
</html>

