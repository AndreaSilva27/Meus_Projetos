

package Calculadora;

import javax.swing.JOptionPane;


public class CalculoDivisao {

    
    public static void main(String[] args) {
    Calculo Divisao = new Calculo();
    
    int numero1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 1º número:"));
    int numero2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 2º número:"));
    
    Divisao.setNumero1(numero1);
    Divisao.setNumero2(numero2);
    Divisao.setCalculo("Divisão");
    
    JOptionPane.showMessageDialog(null, 
            "O cálculo da "+Divisao.getCalculo()+" é: "+Divisao.Calculo());
              
    }

}
