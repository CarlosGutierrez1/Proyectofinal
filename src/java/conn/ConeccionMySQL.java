/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conn;

/**
 *
 * @author apolu
 */
import java.sql.*;
public class ConeccionMySQL {
    
    
    protected Connection conn = null;
    String strHost = "127.0.0.1";
    String strPuerto = "3306";
    String strNombreDB = "Proyectofinal";
    String strUsuario = "root";
    String strPassword = "";
    
    public Connection setConeccion() throws ClassNotFoundException,
			SQLException, InstantiationException, IllegalAccessException {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn = DriverManager.getConnection("jdbc:mysql://" + strHost + ":"
				+ strPuerto + "/" + strNombreDB, strUsuario, strPassword);
		return conn;
	}
    public void setCerrarConeccion() throws SQLException {
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) { /* ignore close errors */
			}
		}
	}

}
