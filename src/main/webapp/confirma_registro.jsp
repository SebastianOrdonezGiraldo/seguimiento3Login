<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Registro exitoso</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Montserrat', sans-serif;
      background-image: linear-gradient(to right, #3F51B5, #673AB7);
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
      max-width: 500px;
    }

    h1 {
      color: #333;
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
      color: #4CAF50;
      font-size: 18px;
      font-weight: 600;
      text-decoration: none;
    }

    a:hover {
      color: #45a049;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Confirmación de Registro!</h1>
  <p>${requestScope.mensaje.toUpperCase()}</p>
  <a><b>${requestScope.usuario.toUpperCase()}</b></a>
  <p>Ahora que está registrado, puede iniciar sesión desde:</p>
  <a href="inicio_login.jsp">Iniciar sesión</a>
</div>
</body>
</html>
