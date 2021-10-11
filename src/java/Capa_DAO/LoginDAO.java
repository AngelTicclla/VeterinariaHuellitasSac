package Capa_DAO;

import Capa_DATOS.BD_Conexion;
import Capa_MODELO.Model_CLIENTES;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LoginDAO {
    int rspta=0;
    String sql="";
    ResultSet rs=null;
    BD_Conexion cn=new BD_Conexion();
    public List<Model_CLIENTES> validarLogin(String usuario, String clave) throws Exception{
        List<Model_CLIENTES> datos = new ArrayList<>();
        sql="SELECT idCliente, nombres_cliente, apellidos_cliente, dni_cliente, email_cliente, telefono_cliente, contraseña_cliente FROM TB_CLIENTE WHERE email_cliente ='"+usuario+"' AND contraseña_cliente ='"+clave+"'";
        rs=cn.ejecutarConsulta(sql);
        while(rs.next()){
            datos.add(new Model_CLIENTES(rs.getInt("idCliente"),
                                        rs.getString("nombres_cliente"),
                                        rs.getString("apellidos_cliente"),
                                        rs.getString("dni_cliente"),
                                        rs.getString("email_cliente"),
                                        rs.getString("telefono_cliente"),
                                        rs.getString("contraseña_cliente")));
        }
    return  datos;
    }
}
