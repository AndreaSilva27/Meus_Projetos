

package Calculadora;

import javax.swing.JOptionPane;


public class CalculoMultiplicacao {

    
    public static void main(String[] args) {
    Calculo Multiplicacao = new Calculo();
    
    int numero1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 1º número:"));
    int numero2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 2º número:"));
    
    Multiplicacao.setNumero1(numero1);
    Multiplicacao.setNumero2(numero2);
    Multiplicacao.setCalculo("Multiplicação");
    
    JOptionPane.showMessageDialog(null, 
            "O cálculo da "+Multiplicacao.getCalculo()+" é: "+Multiplicacao.Calculo());
           
    }

}
