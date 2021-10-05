package ligarBD;

import java.sql.*;

public class ligacaoMySql {

	public static String estado="N�o ligado";
	
	public ligacaoMySql() {
		
	}
    
	public static Connection criarLigacaoMySql() {
		Connection cn= null;
		try {
			String driver="com.mysql.cj.jdbc.Driver";
			Class.forName(driver);
			String url="jdbc:mysql://localhost:3306/bdcarro?useTimezone=true&serverTimezone=UTC";
			String utilizador="root";
			String password="And6389#";
			cn=DriverManager.getConnection(url,utilizador,password);
			if(cn!=null) {
				estado="Liga��o foi efetuada";
			    
			}
			else {
				estado="N�o foi poss�vel criar a liga��o";
			}
			return cn;
		}
		catch(ClassNotFoundException e) {
			System.out.println("erro no driver");
			return null;
		}
		catch(SQLException e) {
			System.out.println("N�o foi poss�vel ligar a base de dados");
			return null;
	}
	}	
	public static String estadoLigacao() {
	return estado;	
	}
}
