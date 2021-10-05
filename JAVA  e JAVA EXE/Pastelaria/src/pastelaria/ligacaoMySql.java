/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pastelaria;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Andrea Silva
 */
public class ligacaoMySql {
 public String estado="Não ligado";

public Connection criarLigacaoMySql(){
    Connection cn=null;
    try{
        String driver="com.mysql.cj.jdbc.Driver";
        Class.forName(driver);
        String caminho="jdbc:mysql://localhost:3306/bdvendas?useTimezone=true&serverTimezone=UTC";
        String utilizador="root";
        String password="And6389#";
        cn=DriverManager.getConnection(caminho,utilizador,password);
        if (cn!=null){
            estado="Ligação efetuada com sucesso";
        }
        return cn;
    }
    catch(ClassNotFoundException e){
        System.out.println("Driver não encontrado"); 
        return null;
    }
    catch(SQLException e){
     
        System.out.println("Não foi possivel ligar à base de dados");  
        return null;
    }
    
}
     public String estadoLigacao(){
        return(estado);
    }    
}
   

