package Controlador;

import Capa_DAO.ProductoDAO;
import Capa_MODELO.Model_PRODUCTOS;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.logging.*;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "ProductoController", urlPatterns = {"/ProductoController"})
public class ProductoController extends HttpServlet {

    public static final String lIST_STUDENT = "/Carrito.jsp";

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
        ProductoDAO pro = new ProductoDAO();
        Model_PRODUCTOS rp = new Model_PRODUCTOS();

        /*AGREGAR*/
        try {
            if (request.getParameter("btn_comprar") != null) {
                String descripcion = request.getParameter("txt_info");
                double precio = Double.parseDouble(request.getParameter("txt_precio"));
                String idcliente = request.getParameter("txt_idcliente");
                int idCliente = Integer.parseInt(idcliente);
                String vsMensaje = "";

                if (vsMensaje.isEmpty()) {
                    int indRegistro = 0;
                    Model_PRODUCTOS oProducto = new Model_PRODUCTOS(1, descripcion, precio, 1, precio, idCliente);
                    try {
                        int crearProducto = ProductoDAO.RegistrarProducto(descripcion, precio, 1, precio, idCliente);
                        response.sendRedirect("PetShop.jsp");
                    } catch (Exception ex) {
                        Logger.getLogger(ClienteController.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                }
            } else {
                response.sendRedirect("Carrito.jsp");
            }
        } catch (Exception e) {
        }

        /*ELIMINAR*/
        try {
            String forward = "";
            String action = request.getParameter("action");
            if (action.equalsIgnoreCase("delete")) {
                forward = lIST_STUDENT;
                int productoId = Integer.parseInt(request.getParameter("idProducto"));
                pro.eliminarProducto(productoId);
            }
        } catch (Exception e) {
        }

        /*ACTUALIZAR*/
        try {
            if (request.getParameter("btn_actualizar") != null) {
                String vlcodigo = request.getParameter("txt_cod");
                int vlCodigo = Integer.parseInt(vlcodigo);
                String vlcantidad = request.getParameter("txt_cant");
                int vlCantidad = Integer.parseInt(vlcantidad);
                String vlPreTotal = request.getParameter("txt_tot");
                double vlPrecioTotal = Double.parseDouble(vlPreTotal);
                String vsMensaje = "";

                if (vsMensaje.isEmpty()) {
                    int indActualizar = 0;
                    Model_PRODUCTOS oProducto = new Model_PRODUCTOS(vlCodigo, vlCantidad, vlPrecioTotal);
                    int actualizarProducto = ProductoDAO.actualizarProducto(vlCodigo, vlCantidad, vlPrecioTotal);
                } else {
                }
            } else {
                response.sendRedirect("Carrito.jsp");
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
