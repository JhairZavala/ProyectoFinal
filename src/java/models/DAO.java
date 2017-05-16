/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Jhair
 */
public class DAO {
     private Connection conexion;
    
    private void abrirConexion() throws SQLException{
        String dbURI = "jdbc:derby://localhost:1527/Tienda";
        String username = "Administrador";
        String password = "123";
        conexion = DriverManager.getConnection(dbURI, username, password);
    }
    
    private void cerrarConexion() throws SQLException{
        conexion.close();
    }
    
    public void insertar(POJO usuario){
       try{
           abrirConexion();
           String sqlInsert = "insert into LOGIN values ('" + usuario.getNombre()+ "','" + usuario.getContrasena() + "')";
           Statement statement = conexion.createStatement();
           statement.executeUpdate(sqlInsert);
           cerrarConexion();
       }catch(Exception ex){
       }
    }
    
    public void insertarContacto(POJO usuario){
       try{
           abrirConexion();
           String sqlInsert = "insert into CONTACTO values ('" + usuario.getNombre()+ "','" + usuario.getTelefono() + "','" + usuario.getCorreo() + "','" + usuario.getSugerencia() +"')";
           Statement statement = conexion.createStatement();
           statement.executeUpdate(sqlInsert);
           cerrarConexion();
       }catch(Exception ex){
       }
    }
    
public ArrayList buscar(POJO pojo) {
        ArrayList<POJO> comentarios = new ArrayList();
        try{
            abrirConexion();
            String sqlBuscar = "select * from LOGIN where NOMBRE = '" + pojo.getNombre() + "' and CONTRASENA like '%" + pojo.getContrasena() + "%'";            
            Statement statement = conexion.createStatement();
            ResultSet result = statement.executeQuery(sqlBuscar);
            while(result.next()){
                String nombre = result.getString("Nombre");
                String contrasena = result.getString("Contrasena");
                POJO coment = new POJO();
                coment.setNombre(nombre);
                coment.setContrasena(contrasena);
                comentarios.add(coment);
            }
            cerrarConexion();
        }catch(Exception ex){
        }
        return comentarios;
    }
}
