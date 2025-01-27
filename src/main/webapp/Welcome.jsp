<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <style>
        /* Apply a smooth gradient background */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(-45deg, #ff007f, #ff7f00, #7fff00, #00ff7f);
            background-size: 400% 400%;
            animation: gradientBG 10s ease infinite;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Center the welcome message with some styling */
        .welcome-container {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
            border-radius: 20px;
            box-shadow: 0 12px 50px rgba(0, 0, 0, 0.5);
            padding: 50px;
            text-align: center;
            max-width: 400px;
            width: 80%;
            animation: fadeIn 1.5s ease-out;
        }

        /* Title styles */
        h2 {
            font-size: 2.5rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #ffcc00;
        }

        /* Welcome message text */
        p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            color: #ffffff;
            opacity: 0.8;
        }

        /* Button style */
        .btn {
            display: inline-block;
            padding: 12px 25px;
            background-color: #ff007f;
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #ff7f00;
            transform: scale(1.05);
        }

        /* Animation for the welcome container */
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(30px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

    <div class="welcome-container">
        <h2>Welcome, ${username}!</h2>
        <p>We are glad to have you here. Explore the amazing features of our site!</p>
        <a href="index.jsp" class="btn">Unfinished Project...</a>
    </div>

</body>
</html>
