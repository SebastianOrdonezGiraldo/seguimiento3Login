<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ingreso correcto</title>
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
            flex-direction: column;
            justify-content: space-between;
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
            width: 100%;
            animation: fadeIn 1.5s ease;
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
            display: inline-block;
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 18px;
            font-weight: 600;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #45a049;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .jsp-info {
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            width: 100%;
            max-width: 800px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        .jsp-info h2, .jsp-info h3, .jsp-info h4 {
            color: #fff;
            margin-top: 0;
        }

        .jsp-info table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .jsp-info table, .jsp-info th, .jsp-info td {
            border: 1px solid #fff;
        }

        .jsp-info th, .jsp-info td {
            padding: 10px;
            text-align: left;
        }

        .jsp-info th {
            background-color: #3F51B5;
        }

        .jsp-info td ul {
            margin: 0;
            padding-left: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Ingreso correcto</h1>
    <%
        // Capturamos el nombre del usuario desde la solicitud
        String usuario = request.getParameter("usuario");
        if (usuario != null) {
            usuario = usuario.toUpperCase(); // Convertimos a mayúsculas si se desea
        } else {
            usuario = "Invitado"; // Valor por defecto en caso de que no haya nombre
        }
    %>
    <p>Bienvenid@ <%=usuario %>, su inicio de sesión es correcto.</p>
    <a href="index.jsp"><b>Cerrar sesión</b></a>
</div>

<div class="jsp-info">
    <h2>Directivas JSP</h2>
    <table>
        <tr>
            <th>Directiva</th>
            <th>Descripción</th>
            <th>Atributos</th>
        </tr>
        <tr>
            <td><b>page</b></td>
            <td>La directiva `page` define la configuración general de la página JSP.</td>
            <td>
                <ul>
                    <li><b>language</b>: Define el lenguaje de script (por lo general, "java").</li>
                    <li><b>extends</b>: Especifica la clase que la página JSP extiende.</li>
                    <li><b>import</b>: Importa clases de Java necesarias.</li>
                    <li><b>session</b>: Habilita o deshabilita el uso de la sesión (true o false).</li>
                    <li><b>buffer</b>: Define el tamaño del buffer para la salida.</li>
                    <li><b>autoFlush</b>: Controla si el buffer se vacía automáticamente (true o false).</li>
                    <li><b>isThreadSafe</b>: Define si la página es segura para hilos (true o false).</li>
                    <li><b>info</b>: Proporciona información sobre la página.</li>
                    <li><b>errorPage</b>: Define una página de error para redirigir en caso de excepción.</li>
                    <li><b>isErrorPage</b>: Indica si la página es una página de error (true o false).</li>
                    <li><b>contentType</b>: Define el tipo de contenido MIME de la página.</li>
                    <li><b>pageEncoding</b>: Define la codificación de la página.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td><b>taglib</b></td>
            <td>La directiva `taglib` define una librería de etiquetas que puede ser usada en la página JSP.</td>
            <td>
                <ul>
                    <li><b>uri</b>: Especifica la URI que identifica la librería de etiquetas.</li>
                    <li><b>prefix</b>: Define un prefijo para las etiquetas de la librería.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td><b>include</b></td>
            <td>La directiva `include` incluye un archivo estático o dinámico en la página JSP.</td>
            <td>
                <ul>
                    <li><b>file</b>: Especifica el archivo a incluir.</li>
                </ul>
            </td>
        </tr>
    </table>

</div>
</body>
</html>
