package Capa_DAO;

import Capa_DATOS.BD_Conexion;
import Capa_MODELO.Model_CLIENTES;
import java.sql.*;

public class ClienteDAO {

    private static Connection oCN;

    public static int RegistrarCliente(String pNombre, String pApellido, String pDNI, String pEmail, String pTelefono, String pContrasena) throws Exception {
        BD_Conexion cn = new BD_Conexion();
        Connection connect = cn.abrirConexion();
        Model_CLIENTES cli = new Model_CLIENTES();
        int indRegistroEmpleado = 0;
        try {
            oCN = cn.abrirConexion();
            String spInsercion = ("{CALL sp_agregarCliente(?, ?, ?, ?, ?, ?)}");
            CallableStatement Cstm = (CallableStatement) oCN.prepareCall(spInsercion);
            Cstm.setString(1, pNombre);
            Cstm.setString(2, pApellido);
            Cstm.setString(3, pDNI);
            Cstm.setString(4, pEmail);
            Cstm.setString(5, pTelefono);
            Cstm.setString(6, pContrasena);

            indRegistroEmpleado = Cstm.executeUpdate();
            cli.a_ESTADOINSERT = indRegistroEmpleado;

            if (indRegistroEmpleado == 1) {
                System.out.println("se creo el empleado");

            } else {
                System.out.println("No se creo el empleado");
            }
        } catch (SQLException e) {
            e.getMessage().toString();
        }
        return indRegistroEmpleado;
    }

    public void BuscarCliente(String pUsuario){
        BD_Conexion cn = new BD_Conexion();
        Connection connect = cn.abrirConexion();
        Model_CLIENTES cli = new Model_CLIENTES();
        
        ResultSet rs = null;
        try {
            oCN = cn.abrirConexion();
            String spInsercion = ("{CALL sp_buscarCliente(?)}");
            CallableStatement Cstm = (CallableStatement) oCN.prepareCall(spInsercion);
            Cstm.setString(1, pUsuario);
            while (rs.next()) {
                cli.setIdCliente(rs.getInt("idCliente"));
            }
        } catch (SQLException e) {
            e.getMessage().toString();
        }
    }
    
    public static int actualizarCliente(int pcod ,String pNombre, String pApellido, String pDNI, String pEmail, String pTelefono, String pContrasena) {
        int indActualizarCliente = 0;
        BD_Conexion cConeccion = new BD_Conexion();
        try {
            oCN = cConeccion.abrirConexion();
            String spActualizar = "{CALL sp_actualizarCliente (?, ?, ?, ?, ?, ?, ?)}";

            System.out.println(spActualizar);
            CallableStatement Cstm = (CallableStatement) oCN.prepareCall(spActualizar);
            Cstm.setInt(1, pcod);
            Cstm.setString(2, pNombre);
            Cstm.setString(3, pApellido);
            Cstm.setString(4, pDNI);
            Cstm.setString(5, pEmail);
            Cstm.setString(6, pTelefono);
            Cstm.setString(7, pContrasena);
            indActualizarCliente = Cstm.executeUpdate();
            Model_CLIENTES.a_ESTADOINSERT = indActualizarCliente;
            if (indActualizarCliente == 1) {
                System.out.println("Se actualizó el cliente");
            } else {
                System.out.println("No se actualizo el cliente");
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return indActualizarCliente;
    }
    
    public static int eliminarCliente(int pidCliente) {
        int indEliminarCliente = 0;
        BD_Conexion cConeccion = new BD_Conexion();
        try {
            oCN = cConeccion.abrirConexion();
            String spEliminar = "{CALL sp_eliminarCliente (?)}";

            System.out.println(spEliminar);
            CallableStatement Cstm = (CallableStatement) oCN.prepareCall(spEliminar);
            Cstm.setInt(1, pidCliente);
            indEliminarCliente = Cstm.executeUpdate();
            Model_CLIENTES.a_ESTADOINSERT = indEliminarCliente;
            if (indEliminarCliente == 1) {
                System.out.println("Se eliminó el cliente");
            } else {
                System.out.println("No se eliminó el cliente");
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return indEliminarCliente;
    }
}
