package Controlador;

import Capa_DAO.ClienteDAO;
import Capa_MODELO.Model_CLIENTES;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "ClienteController", urlPatterns = {"/ClienteController"})
public class ClienteController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int rsptaCli = 0;
        ClienteDAO cli = new ClienteDAO();
        Model_CLIENTES rc = new Model_CLIENTES();
        
        /*AGREGAR*/
        if (request.getParameter("btn_registrar") != null) {
            String nombre = request.getParameter("txt_nombre");
            String apellido = request.getParameter("txt_apellido");
            String dni = request.getParameter("txt_dni");
            String email = request.getParameter("txt_email");
            String telefono = request.getParameter("txt_telefono");
            String contrasena = request.getParameter("txt_contrasena");
            String vsMensaje = "";

            if (vsMensaje.isEmpty()) {
                int indRegistro = 0;
                Model_CLIENTES oEmpleado = new Model_CLIENTES(1, nombre, apellido, dni, email, telefono, contrasena);
                try {
                    int crearEmepleado = ClienteDAO.RegistrarCliente(nombre, apellido, dni, email, telefono, contrasena);
                } catch (Exception ex) {
                    Logger.getLogger(ClienteController.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.setAttribute("vsEmpleado", oEmpleado);
                request.getRequestDispatcher("/Index.jsp").forward(request, response);

            } else {
                request.setAttribute("vsMensaje", vsMensaje);
                request.getRequestDispatcher("ControllerCliente").forward(request, response);
            }
        } else {
            response.sendRedirect("Index.jsp");
        }
        
        /*ACTUALIZAR*/
        try {
            if (request.getParameter("btn_guardarCli") != null) {
                String vlcodigo = request.getParameter("txt_codCli");
                int vlCodigo = Integer.parseInt(vlcodigo);
                String nombre = request.getParameter("txt_nomCli");
                String apellido = request.getParameter("txt_apeCli");
                String dni = request.getParameter("txt_dniCli");
                String email = request.getParameter("txt_correoCli");
                String telefono = request.getParameter("txt_telCli");
                String contrasena = request.getParameter("txt_contraCli");
                String vsMensaje = "";

                if (vsMensaje.isEmpty()) {
                    int indActualizar = 0;
                    Model_CLIENTES oCliente = new Model_CLIENTES(vlCodigo, nombre, apellido, dni, email, telefono, contrasena);
                    int actualizarCliente = ClienteDAO.actualizarCliente(vlCodigo, nombre, apellido, dni, email, telefono, contrasena);
                } else {
                }
            } else {
                response.sendRedirect("Cliente.jsp");
            }
        } catch (Exception e) {
        }
        
        
        /*ELIMINAR*/
        try {
            if (request.getParameter("btn_eliminarCli") != null) {
                String vlcodigo = request.getParameter("txt_codCli");
                int vlCodigo = Integer.parseInt(vlcodigo);
                String vsMensaje = "";

                if (vsMensaje.isEmpty()) {
                    int indActualizar = 0;
                    Model_CLIENTES oCliente = new Model_CLIENTES(vlCodigo);
                    int actualizarCliente = ClienteDAO.eliminarCliente(vlCodigo);
                } else {
                }
            } else {
                response.sendRedirect("Index.jsp");
            }
        } catch (Exception e) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
