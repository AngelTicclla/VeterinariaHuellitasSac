package Capa_DAO;

import Capa_DATOS.BD_Conexion;
import Capa_MODELO.Model_PRODUCTOS;
import java.sql.*;

public class ProductoDAO {
    private static Connection oCN;
    BD_Conexion cn=new BD_Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Model_PRODUCTOS p=new Model_PRODUCTOS();

    public static int RegistrarProducto(String pDescripcion, double pPrecio, int pCantidad, double pTotal, int pIdCliente) throws Exception {
        BD_Conexion cn = new BD_Conexion();
        Connection connect = cn.abrirConexion();
        Model_PRODUCTOS pro = new Model_PRODUCTOS();
        int indRegistroProducto = 0;
        try {
            oCN = cn.abrirConexion();
            String spInsercion = ("{CALL sp_agregarProducto(?, ?, ?, ?, ?)}");
            CallableStatement Cstm = (CallableStatement) oCN.prepareCall(spInsercion);
            Cstm.setString(1, pDescripcion);
            Cstm.setDouble(2, pPrecio);
            Cstm.setInt(3, pCantidad);
            Cstm.setDouble(4, pTotal);
            Cstm.setInt(5, pIdCliente);
            
            indRegistroProducto = Cstm.executeUpdate();
            pro.a_ESTADOINSERT = indRegistroProducto;
            
            if (indRegistroProducto == 1) {
                System.out.println("se creo el producto");

            } else {
                System.out.println("No se creo el producto");
            }
        } catch (SQLException e) {
            e.getMessage().toString();
        }
        return indRegistroProducto;
    }
    
    public static int actualizarProducto(int pidProducto, int pCantidad, double pPreTotal) {
        int indActualizarProducto = 0;
        BD_Conexion cConeccion = new BD_Conexion();
        try {
            oCN = cConeccion.abrirConexion();
            String spActualizar = "{CALL sp_actualizarProducto (?, ?, ?)}";

            System.out.println(spActualizar);
            CallableStatement Cstm = (CallableStatement) oCN.prepareCall(spActualizar);
            Cstm.setInt(1, pidProducto);
            Cstm.setInt(2, pCantidad);
            Cstm.setDouble(3, pPreTotal);
            indActualizarProducto = Cstm.executeUpdate();
            Model_PRODUCTOS.a_ESTADOINSERT = indActualizarProducto;
            if (indActualizarProducto == 1) {
                System.out.println("Se actualizó el producto");
            } else {
                System.out.println("No se actualizo el producto");
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return indActualizarProducto;
    }
    
    public static int eliminarProducto(int pidProducto) {
        int indEliminarProducto = 0;
        BD_Conexion cConeccion = new BD_Conexion();
        try {
            oCN = cConeccion.abrirConexion();
            String spEliminar = "{CALL sp_eliminarProducto (?)}";

            System.out.println(spEliminar);
            CallableStatement Cstm = (CallableStatement) oCN.prepareCall(spEliminar);
            Cstm.setInt(1, pidProducto);
            indEliminarProducto = Cstm.executeUpdate();
            Model_PRODUCTOS.a_ESTADOINSERT = indEliminarProducto;
            if (indEliminarProducto == 1) {
                System.out.println("Se eliminó el producto");
            } else {
                System.out.println("No se eliminó el producto");
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return indEliminarProducto;
    }
        
}
