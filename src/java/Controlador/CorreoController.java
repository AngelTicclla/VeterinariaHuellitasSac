/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "CorreoController", urlPatterns = {"/mail"})
public class CorreoController extends HttpServlet {

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
        if (request.getParameter("btn_enviar") != null) {
            Properties propiedad = new Properties();
            propiedad.setProperty("mail.smtp.host", "smtp.gmail.com");
            propiedad.setProperty("mail.smtp.starttls.enable", "true");
            propiedad.setProperty("mail.smtp.port", "587");
            propiedad.setProperty("mail.smtp.auth", "true");
            
            Session sesion = Session.getDefaultInstance(propiedad);
            
            String nombreCliente = request.getParameter("txtnombre");
            String telefonoCliente = request.getParameter("txttelefono");
            String mensajeCliente = request.getParameter("txtmensaje");
            String correoEnvia = "veterinaria.huellitas.lmt@gmail.com";
            String contrasena = "Grupo2WEB/";
            String destinario = request.getParameter("txtemail");
            String asunto1 = "Gracias por contactarnos";
            String mensajeParaCliente = "Buen dia "+nombreCliente+". En breve nos estaremos contactando contigo.";
            
            MimeMessage mail = new MimeMessage(sesion);
            try {
                mail.setFrom(new InternetAddress(correoEnvia));
                mail.addRecipient(Message.RecipientType.TO, new InternetAddress(destinario));
                mail.setSubject(asunto1);
                mail.setText(mensajeParaCliente);
                
                Transport transporte = sesion.getTransport("smtp");
                transporte.connect(correoEnvia,contrasena);
                transporte.sendMessage(mail, mail.getRecipients(Message.RecipientType.TO));
                transporte.close();
                
                
            } catch (AddressException ex) {
                Logger.getLogger(CorreoController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (MessagingException ex) {
                Logger.getLogger(CorreoController.class.getName()).log(Level.SEVERE, null, ex);
            }
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
