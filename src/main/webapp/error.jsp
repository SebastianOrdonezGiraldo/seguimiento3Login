<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Error de Inicio de Sesión</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-image: linear-gradient(to right, #FF5252, #FF1744);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #FF1744;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        p {
            color: #666;
            font-size: 18px;
            margin-bottom: 20px;
        }

        a {
            color: #FF5252;
            font-size: 18px;
            font-weight: 600;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #FFE6E6;
            border-radius: 8px;
        }

        a:hover {
            background-color: #FFCCCC;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Error</h1>
    <p>Usuario o contraseña incorrectos. Por favor, inténtelo nuevamente.</p>
    <a href="inicio_login.jsp"><b>Intentar nuevamente</b></a>
</div>
</body>
</html>
