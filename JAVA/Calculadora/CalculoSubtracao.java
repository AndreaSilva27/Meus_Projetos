

package Calculadora;

import javax.swing.JOptionPane;


public class CalculoSubtracao {

    
    public static void main(String[] args) {
     Calculo Subtracao = new Calculo();
    
    int numero1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 1º número:"));
    int numero2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 2º número:"));
    
    Subtracao.setNumero1(numero1);
    Subtracao.setNumero2(numero2);
    Subtracao.setCalculo("Subtração");
    
    JOptionPane.showMessageDialog(null, 
            "O cálculo da "+Subtracao.getCalculo()+" é: "+Subtracao.Calculo());
          
    }

}
