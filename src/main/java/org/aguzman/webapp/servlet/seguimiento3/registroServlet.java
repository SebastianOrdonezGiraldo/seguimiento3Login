package org.aguzman.webapp.servlet.seguimiento3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/registro")
public class registroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String usuario = request.getParameter("usuario").toUpperCase(); // Convertir a mayúsculas
        String clave = request.getParameter("clave");
        String direccion = request.getParameter("direccion");
        String movil = request.getParameter("movil");

        if (nombres.isEmpty() || apellidos.isEmpty() || usuario.isEmpty() || clave.isEmpty() || direccion.isEmpty() || movil.isEmpty()) {
            // Redirigir a la página de registro con un mensaje de error si hay campos vacíos
            request.setAttribute("mensajeError", "Todos los campos son requeridos.");
            RequestDispatcher req = request.getRequestDispatcher("index.jsp");
            req.include(request, response);
        } else {
            // Crear un nuevo objeto Usuario con los datos del formulario
            Usuario nuevoUsuario = new Usuario(usuario, clave, nombres, apellidos, direccion, movil);

            // Obtener o crear la lista de usuarios en la sesión
            HttpSession session = request.getSession();
            ArrayList<Usuario> usuarios = (ArrayList<Usuario>) session.getAttribute("usuarios");

            if (usuarios == null) {
                usuarios = new ArrayList<>();
            }

            // Agregar el nuevo usuario a la lista y guardar en la sesión
            usuarios.add(nuevoUsuario);
            session.setAttribute("usuarios", usuarios);

            // Enviar mensaje de confirmación
            request.setAttribute("mensaje", "Registro exitoso para " + usuario);
            request.setAttribute("usuario", "Bienvenido " + usuario);

            // Redirigir a la página de confirmación
            request.getRequestDispatcher("confirma_registro.jsp").forward(request, response);
        }
    }
}
