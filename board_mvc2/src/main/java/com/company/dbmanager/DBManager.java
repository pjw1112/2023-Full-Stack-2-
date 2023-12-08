package com.company.dbmanager;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {

	public static Connection conn;

	public Connection getConnection() {
		try {
			// 1. server.xml 가져와 주는거
			Context initContext = new InitialContext();
			
			// 2. 환경설정
			Context envContext = (Context) initContext.lookup("java:/comp/env");//(자바에서 제공하는 java:/ comp 내부의 환경설정 env

			// 3. DataSource - jdbc/mbasic
			DataSource db = (DataSource) envContext.lookup("jdbc/mbasic");

			// 4. Connection
			conn = db.getConnection();
			if (conn != null) {
				System.out.println(".... DBMANAGER 연동성공!");
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return conn;

	}

}
