package org.aguzman.webapp.servlet.seguimiento3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/loginServlet")


public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recuperar el usuario y la contraseña desde el formulario
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        // Obtener los valores almacenados en la sesión (estos deberían haberse guardado en registroServlet)
        String usuarioRegistrado = (String) request.getSession().getAttribute("usuarioRegistrado");
        String claveRegistrada = (String) request.getSession().getAttribute("claveRegistrada");

        // Validar si coinciden
        if (usuario != null && clave != null && usuario.equals(usuarioRegistrado) && clave.equals(claveRegistrada)) {
            // Redirigir a login_correcto.jsp si la validación es exitosa
            response.sendRedirect("login_correcto.jsp");
        } else {
            // Redirigir de nuevo al formulario de login si la validación falla
            response.sendRedirect("login_correcto.jsp");
        }
    }
}
