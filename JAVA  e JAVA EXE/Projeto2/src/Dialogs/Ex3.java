

package Dialogs;

import javax.swing.JOptionPane;


public class Ex3 {

    
    public static void main(String[] args) {
    do{
    // Solicitar o 1º número
    int n1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Qual o 1º número?"));
    // Solicitar o 2º número
    int n2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Qual o 2º número?"));  
    
    JOptionPane.showMessageDialog(null, 
            "A soma é:"+(n1+n2));
    
    }while(JOptionPane.showConfirmDialog(null, 
            "Repetir?",
            "Continuar?",
            JOptionPane.YES_NO_OPTION)==0);
    }

}   
    
