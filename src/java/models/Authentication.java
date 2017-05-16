/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author Jhair
 */
public class Authentication {
    public static boolean authenticate(String nombre, String contrasena) {

        
        POJO user = new POJO();
        
        if(nombre.equals(user.getNombre()) && contrasena.equals(user.getContrasena())) {
            return true;
        }
        else {
            return false;
        }
    }
}
