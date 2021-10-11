package Capa_MODELO;

public class Model_CLIENTES {
    private int idCliente;
    private String nombres;
    private String apellidos;
    private String dni;
    private String email;
    private String telefono;
    private String contrasena;
    public static int a_ESTADOINSERT;

    public Model_CLIENTES() {
    }

    public Model_CLIENTES(int idCliente, String nombres, String apellidos, String dni, String email, String telefono, String contrasena) {
        this.idCliente = idCliente;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.dni = dni;
        this.email = email;
        this.telefono = telefono;
        this.contrasena = contrasena;
    }

    public Model_CLIENTES(int idCliente) {
        this.idCliente = idCliente;
    }    
    

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public static int getA_ESTADOINSERT() {
        return a_ESTADOINSERT;
    }

    public static void setA_ESTADOINSERT(int a_ESTADOINSERT) {
        Model_CLIENTES.a_ESTADOINSERT = a_ESTADOINSERT;
    }
    
}
