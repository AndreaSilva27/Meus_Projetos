package projetoclasses;

import javax.swing.JOptionPane;

public class TestarDimensao {
    
    public static void main(String[] args) {
    Object[]opcoes={"Quadrado","Retângulo","Triângulo"};
    do{
    int Tipo=JOptionPane.showOptionDialog(null,
            "Selecione tipo de figura",
            "Cálculo da área",
            JOptionPane.YES_NO_CANCEL_OPTION,
            JOptionPane.PLAIN_MESSAGE,
            null,
            opcoes,null);
    
    switch(Tipo){
        case 0->{
            int lado=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique valor do lado"));
            Dimensao Q=new Dimensao();
            Q.setAltura(lado);
            Q.setBase(lado);
            Q.setTipo("Quadrado");
            JOptionPane.showMessageDialog(null, 
            "Área do "+Q.getTipo()+" é: "+Q.Area());
        }
        case 1->{
            int lado1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique valor do lado maior"));
            int lado2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique valor do lado menor"));            
            Dimensao R=new Dimensao();
            R.setAltura(lado1);
            R.setBase(lado2);
            R.setTipo("Retângulo");
            JOptionPane.showMessageDialog(null, 
            "Área do "+R.getTipo()+" é: "+R.Area());
        }     
       case 2->{
            int lado1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique valor da base"));
            int lado2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique valor da altura"));            
            Dimensao T=new Dimensao();
            T.setAltura(lado2);
            T.setBase(lado1);
            T.setTipo("Triângulo");
            JOptionPane.showMessageDialog(null, 
            "Área do "+T.getTipo()+" é: "+T.Area());
        }                
    }
    }while(JOptionPane.showConfirmDialog(null,
            "Continuar",
            "Repetir",
            JOptionPane.YES_NO_OPTION)==JOptionPane.YES_OPTION);
    }

}
