<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        /* Apply a gradient background with animation */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(-45deg, #ff0000, #ffcc00, #00ff00);
            background-size: 400% 400%;
            animation: gradientBG 8s ease infinite;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Registration container with a black box style */
        .register-container {
            background: #000000; /* Solid black background */
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3); /* Slightly stronger shadow */
            padding: 30px;
            width: 350px;
            text-align: center;
        }

        .register-container h2 {
            margin-bottom: 20px;
            color: #ffffff; /* White text for contrast */
            font-size: 1.8rem;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 8px;
            font-weight: bold;
            color: #ffffff; /* White text for labels */
        }

        input[type="text"], input[type="password"] {
            width: 85%; /* Reduced width */
            padding: 10px; /* Slightly smaller padding */
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            outline: none;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #ff0000;
            box-shadow: 0 0 10px rgba(255, 0, 0, 0.3);
        }

        button {
            width: 70%; /* Reduced width */
            padding: 10px;
            background: linear-gradient(to right, #ff0000, #ffcc00, #00ff00);
            border: none;
            color: #fff;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.4s ease;
        }

        button:hover {
            background: linear-gradient(to right, #00ff00, #ffcc00, #ff0000);
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        a {
            display: block;
            margin-top: 20px;
            color: #ffcc00; /* Yellow link color for visibility */
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #00ff00;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Registration Page</h2>
        <form action="register1" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Register</button>
        </form>
        <a href="index.jsp">Back to Login</a>
    </div>
</body>
</html>
