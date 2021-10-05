package appcontactos;

import java.sql.*;

public class ligacaoMySql {
public String Estado="Não Ligado";
	
	
	public Connection criarLigacaoMySql() {
		Connection cn=null;
		
		try {
			// nome do driver
			String driver="com.mysql.cj.jdbc.Driver";
			Class.forName(driver);
			String caminho="jdbc:mysql://localhost:3306/bd_contactos?useTimezone=true&serverTimezone=UTC";
			String utilizador="root";
			String password="12345678";
			cn=DriverManager.getConnection(caminho,utilizador,password);
			if(cn!=null) {
				Estado="Ligação efetuada com sucesso!";
			}
			else {
				Estado="Não foi possível criar a ligação!";
			}
			return cn;
		}
		catch(ClassNotFoundException e) {
			System.out.println("Driver não encontado.");
			return null;
		}
		catch(SQLException e) {
			System.out.println("Não foi possivel ligar à base de dados.");
			return null;			
		}
	}
	
	public String estadoLigacao() {
		return(Estado);
	}
	
}
