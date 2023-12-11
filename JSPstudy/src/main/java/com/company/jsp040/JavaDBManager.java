package com.company.jsp040;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class JavaDBManager {

	public static Connection conn;

	public Connection getConnection() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/mbasic");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}
