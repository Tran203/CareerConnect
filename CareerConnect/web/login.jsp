<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style/login.css">
  <title>CareerConnect - Login</title>
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="mentor_pages/mentor_dashboard.html">About</a></li>
        <li><a href="registration.jsp">Registration</a></li>
      </ul>
    </nav>
  </header>

  <section class="hero">
    <div class="hero-content">
      <h1>Welcome Back to CareerConnect</h1>
    </div>
  </section>

  <section class="login">
    <div class="form-container">
      <form class="form" action="AccountLoginServlet.do" method="POST">
        <h2>Login</h2>
        <input type="email" placeholder="Email Address" required>
        <input type="password" placeholder="Password" required>
        <button type="submit">Log In</button>
      </form>
    </div>
  </section>

  <footer>
    <p>&copy; 2023 CareerConnect. All rights reserved.</p>
  </footer>
</body>
</html>


