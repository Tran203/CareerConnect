<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Not Found</title>
    <style>
        /* Reset default margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Set base font and styles */
        body {
            font-family: Arial, sans-serif;
            font-size: 16px;
            line-height: 1.5;
        }

        /* Set container styles */
        .container {
            max-width: 400px;
            margin: 50px auto;
            text-align: center;
        }

        /* Set heading styles */
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Set paragraph styles */
        p {
            margin-bottom: 10px;
        }

        /* Set buttons container styles */
        .buttons {
            margin-top: 20px;
        }

        /* Set button styles */
        a.button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-right: 10px;
        }

        /* Set button hover effect */
        a.button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Not Found</h1>
        <p>The account you are trying to login with does not exist in our database.</p>
        <p>Please check your credentials or create a new account.</p>
        <div class="buttons">
            <a href="./login.jsp" class="button">Try Login Again</a>
            <a href="./registration.jsp" class="button">Register New Account</a>
        </div>
    </div>
</body>
</html>

