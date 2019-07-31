package controller2;

import java.awt.Component;
import java.awt.Frame;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;
import javax.swing.RootPaneContainer;

import com.mysql.jdbc.Statement;

import model.infoMilk;


public class Controller {
	Connection connection;
	
	public Connection CSDL(String databaseName ) {
		// TODO Auto-generated constructor stub
		
		try {
			connection = new ReadDatabaseName().ReadDatabase(databaseName);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}



}
