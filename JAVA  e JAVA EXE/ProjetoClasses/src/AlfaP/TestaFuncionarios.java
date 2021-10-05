package AlfaP;

import java.util.ArrayList;
import javax.swing.JOptionPane;


public class TestaFuncionarios {

    
    public static void main(String[] args) {
    String Nome,Email;
    int Movel;
    double Vendas, Premio, Horasextras, Base;
    
    ArrayList tipo=new ArrayList();
    tipo.add("Vendedor");
    tipo.add("Administrativo");
    tipo.add("Financeiro");
    
    Object[] opcoes={"Vendedores","Administrativos","Financeiros"};
    
    int func=JOptionPane.showOptionDialog(null,
             "Selecione tipo de funcionário",
             "Cálculo do Salário",
             JOptionPane.YES_NO_CANCEL_OPTION,
             JOptionPane.PLAIN_MESSAGE,
             null,
             opcoes,
             null);
    
    Nome=JOptionPane.showInputDialog(null,
            "Nome do "+tipo.get(func));
    Email=JOptionPane.showInputDialog(null,
            "Email do "+tipo.get(func));
    Movel=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Movel do "+tipo.get(func)));
    Base=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Salário do "+tipo.get(func)));
    switch(func){
        case 0:
            Vendas=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Vendas do "+tipo.get(func)));
            Vendedores v=new Vendedores(Nome,Email,Movel,Base,Vendas);
            v.Salario_Vendedor();
            break;
        case 1:
            Horasextras=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Horas extras do "+tipo.get(func)));
            Administrativos a=new Administrativos(Nome,Email,Movel,Base,Horasextras);
            a.Salario_Administrativo();
            break;    
        case 2:
            Premio=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Premio do "+tipo.get(func)));
            Financeiros f=new Financeiros(Nome,Email,Movel,Base,Premio);
            f.Salario_Financeiro();
            break;                
    }
    
    }
    
}
