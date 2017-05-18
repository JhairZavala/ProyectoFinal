/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

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
}
