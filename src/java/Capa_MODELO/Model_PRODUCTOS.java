package Capa_MODELO;

import java.io.InputStream;

public class Model_PRODUCTOS {
    private int idProducto;
    /*InputStream archivoimg;
    private byte[] archivoimg2;*/
    private String descripcion;
    private double precio;
    private int cantidad;
    private double precioTotal;
    private int idCliente;
    public static int a_ESTADOINSERT;

    public Model_PRODUCTOS() {
    }

    public Model_PRODUCTOS(int idProducto, String descripcion, double precio, int cantidad, double precioTotal, int idCliente) {
        this.idProducto = idProducto;
        this.descripcion = descripcion;
        this.precio = precio;
        this.cantidad = cantidad;
        this.precioTotal = precioTotal;
        this.idCliente = idCliente;
    }

    public Model_PRODUCTOS(int idProducto, int cantidad, double precioTotal) {
        this.idProducto = idProducto;
        this.cantidad = cantidad;
        this.precioTotal = precioTotal;
    }
        

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    /*public InputStream getArchivoimg() {
        return archivoimg;
    }

    public void setArchivoimg(InputStream archivoimg) {
        this.archivoimg = archivoimg;
    }*/

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecioTotal() {
        return precioTotal;
    }

    public void setPrecioTotal(double precioTotal) {
        this.precioTotal = precioTotal;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }
    
    
    
    public static int getA_ESTADOINSERT() {
        return a_ESTADOINSERT;
    }

    public static void setA_ESTADOINSERT(int a_ESTADOINSERT) {
        Model_CLIENTES.a_ESTADOINSERT = a_ESTADOINSERT;
    }
    
    /*public byte[] getArchivoimg2() {
        return archivoimg2;
    }*/

    /**
     * @param archivopdf2 the archivopdf2 to set
     */
    /*public void setArchivoimg2(byte[] archivoimg2) {
        this.archivoimg2 = archivoimg2;
    }*/
    
    
}
