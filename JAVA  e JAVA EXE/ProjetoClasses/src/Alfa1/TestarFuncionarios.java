

package Alfa1;

import javax.swing.JOptionPane;


public class TestarFuncionarios {

    
    public static void main(String[] args) {
        String Nome,Email;
        int Telemovel,Horas;
        double Salario,Vendas,Variavel,SalarioV = 0,SalarioA = 0,SalarioF = 0;
        Object[] opcoes={"Vendedores","Administrativos","Financeiros"};
    
    do{
        
        int Funcionarios = JOptionPane.showOptionDialog(null,
                "Olá e Benvindo!\nSelecione o Tipo de Funcionário:",
                "Empresa Alfa",
                JOptionPane.YES_NO_CANCEL_OPTION,
                JOptionPane.PLAIN_MESSAGE,
                null,opcoes,null);
        Nome=JOptionPane.showInputDialog(null,
            "Nome: ");
        Email=JOptionPane.showInputDialog(null,
            "Email:");
        Telemovel=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Telemóvel:"));
        Salario=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Salário: "));
    switch(Funcionarios){
            case 0->{
            Vendas=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Valor das Vendas:"));
            Vendedores v=new Vendedores(Nome,Email,Telemovel,Salario,Vendas,SalarioV);
            v.DadosVendedor();
            
           
            }
            case 1->{
            Horas=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique as horas extras trabalhadas:"));
            Administrativos a=new Administrativos(Nome,Email,Telemovel,Salario,Horas,SalarioA);
            a.DadosAdministrativo();
                
            }
            case 2 ->{
            Variavel=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Valor do Variável:"));
            Financeiros f=new Financeiros(Nome,Email,Telemovel,Salario,Variavel,SalarioF);
            f.DadosFinanceiro();
                          
            }
             
    }    
    }while(JOptionPane.showConfirmDialog(null, 
            "Continuar?",
            "Repetir",
            JOptionPane.YES_NO_CANCEL_OPTION)==JOptionPane.YES_OPTION);
    }
    }
    


