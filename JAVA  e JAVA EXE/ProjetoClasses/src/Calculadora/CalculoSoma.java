

package Calculadora;

import javax.swing.JOptionPane;



public class CalculoSoma {

    
    public static void main(String[] args) {
    Calculo Soma = new Calculo();
    
    int numero1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 1º número:"));
    int numero2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique o 2º número:"));
    
    Soma.setNumero1(numero1);
    Soma.setNumero2(numero2);
    Soma.setCalculo("Soma");
    
    JOptionPane.showMessageDialog(null, 
            "O cálculo da "+Soma.getCalculo()+" é: "+Soma.Calculo());
        
    }
  
    }


