<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
    <style>
        /* Body styles */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }

        /* Container for the content */
        .error-container {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            padding: 40px;
            text-align: center;
            width: 90%;
            max-width: 400px;
            animation: fadeIn 1s ease-in-out;
        }

        /* Header style */
        h1 {
            color: #ff4747;
            font-size: 3rem;
            margin-bottom: 20px;
        }

        /* Paragraph style */
        p {
            color: #555;
            font-size: 1.1rem;
            margin-bottom: 30px;
        }

        /* Link styles that resemble buttons */
        .btn-link {
            display: inline-block;
            margin-top: 15px;
            background-color: #007bff;
            color: white;
            padding: 12px 25px;
            border-radius: 30px;
            font-size: 1.1rem;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .btn-link:hover {
            background-color: #0056b3;
            text-decoration: none;
            transform: scale(1.05);
        }

        /* Button style */
        .btn {
            padding: 12px 25px;
            background-color: #ff4747;
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            text-align: center;
            margin-top: 30px;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #e02e2e;
            transform: scale(1.05);
        }

        /* Animation for the container */
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

    </style>
</head>
<body>

    <div class="error-container">
        <h1>Operation Failed</h1>
        <p>${errorMessage}</p>

        <!-- Link styled as button for Registration -->
        <a class="btn-link" href="register.jsp">Try Registration</a>

        <!-- Button to retry the operation -->
        <div>
            <button class="btn" onclick="window.location.href='index.jsp'">Go Back to Login</button>
        </div>
    </div>

</body>
</html>
