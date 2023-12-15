/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pert8;
import Pert7.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Asus
 */
public class Koneksi {
    private static Connection mysqlconfig;
    public static Connection configDB(){
        try {
            String url="jdbc:mysql://localhost/list";
            String user="root";
            String pass="";
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            mysqlconfig=DriverManager.getConnection(url, user, pass);
        }   catch (SQLException e){
            System.err.println("koneksi gagal "+e.getMessage());
        }    
        return mysqlconfig;
}
}
