

package Alfa;

import javax.swing.JOptionPane;


public class TestarFuncionarios {

    
    public static void main(String[] args) {
     
        Object[] opcoes={"Funcionários","Vendedores","Administrativos","Financeiros"};
    
    do{
        
        int Funcionarios = JOptionPane.showOptionDialog(null,
                "Olá e Benvindo!\nSelecione o Tipo de Funcionário:",
                "Empresa Alfa",
                JOptionPane.YES_NO_CANCEL_OPTION,
                JOptionPane.PLAIN_MESSAGE,
                null,opcoes,null);
    switch(Funcionarios){
            case 0->{
     Funcionarios F=new Funcionarios("Ana Dias","ana@gmail.com",999888777,750);
    F.DadosFuncionario();
            }
            case 1->{
    Vendedores V=new Vendedores("João Meses","joao@sapo.pt",999777666,750,(750*1.05));
    V.DadosVendedor();
            }
            case 2 ->{
    Administrativos A=new Administrativos("Clara Neves","clara@gmail.com",999666555,750,15,(750+(15*3)));
    A.DadosAdministrativo();
            }
             case 3 ->{
    Financeiros Fi=new Financeiros("Nuno Cabral","nuno@gmail.com",999555444,750,300,(750+300));
    Fi.DadosFinanceiro();
            }
    }    
    }while(JOptionPane.showConfirmDialog(null, 
            "Continuar?",
            "Repetir",
            JOptionPane.YES_NO_CANCEL_OPTION)==JOptionPane.YES_OPTION);
    }
    }
    


