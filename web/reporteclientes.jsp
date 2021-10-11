<%-- 
    Document   : reporteclientes
    Created on : 10/10/2021, 09:07:40 PM
    Author     : Usuario
--%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="net.sf.jasperreports.engine.JasperRunManager" %>
<%@page import="java.util.*" %>
<%@page import="java.io.File" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <button> GAAAAAAAAAAAAAAAAAAAAAAA</button>
        <%
            Connection cn;
            Class.forName("com.mysql.cj.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost/veterinaria_huellitas", "root", "123456");
            File repoFile = new File(application.getRealPath("Reportes/reporteclientes.jasper"));
             HttpSession ses = request.getSession();
            int codigo = 0;
            codigo = Integer.parseInt(ses.getAttribute("id").toString());
            Map parametros = new HashMap();
            parametros.put("idcliente", codigo);
            byte[] bytes = JasperRunManager.runReportToPdf(repoFile.getPath(), parametros, cn);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);

            ServletOutputStream outputStream = response.getOutputStream();
            response.getOutputStream();
            outputStream.write(bytes, 0, bytes.length);
            outputStream.flush();
            outputStream.close();

        %>
    </body>
</html>
