

package Calculadora;

import javax.swing.JOptionPane;


public class TestarCalculo {

    
    public static void main(String[] args) {
     Object[]opcoes={"Soma","Subtração","Multiplicação","Divisão"};
    do{
    int Calculo=JOptionPane.showOptionDialog(null,
            "Selecione a opção desejada:",
            "Cálculo",
            JOptionPane.YES_NO_CANCEL_OPTION,
            JOptionPane.PLAIN_MESSAGE,
            null,
            opcoes,null);
    switch(Calculo){
        case 0->{
            int numero1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 1º número:"));
            int numero2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 2º número:"));
            Calculo Soma=new Calculo();
            Soma.setNumero1(numero1);
            Soma.setNumero2(numero2);
            Soma.setCalculo("Soma");
            JOptionPane.showMessageDialog(null, 
            "O cálculo da "+Soma.getCalculo()+" é: "+Soma.Calculo());
            
        }
        case 1->{
            int numero1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 1º número:"));
            int numero2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 2º número:"));
            Calculo Subtracao=new Calculo();
            Subtracao.setNumero1(numero1);
            Subtracao.setNumero2(numero2);
            Subtracao.setCalculo("Subtração");
            JOptionPane.showMessageDialog(null, 
            "O cálculo da "+Subtracao.getCalculo()+" é: "+Subtracao.Calculo());
        }
        case 2->{
            int numero1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 1º número:"));
            int numero2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 2º número:"));
            Calculo Multiplicacao=new Calculo();
            Multiplicacao.setNumero1(numero1);
            Multiplicacao.setNumero2(numero2);
            Multiplicacao.setCalculo("Multiplicação");
            JOptionPane.showMessageDialog(null, 
            "O cálculo da "+Multiplicacao.getCalculo()+" é: "+Multiplicacao.Calculo());
        }
        case 3->{
            int numero1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 1º número:"));
            int numero2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 2º número:"));
            Calculo Divisao=new Calculo();
            Divisao.setNumero1(numero1);
            Divisao.setNumero2(numero2);
            Divisao.setCalculo("Divisão");
            JOptionPane.showMessageDialog(null, 
            "O cálculo da "+Divisao.getCalculo()+" é: "+Divisao.Calculo());
        }
        }
        }
    while(JOptionPane.showConfirmDialog(null,
            "Continuar",
            "Repetir",
            JOptionPane.YES_NO_OPTION)==JOptionPane.YES_OPTION);
    }
}

        
       
    


