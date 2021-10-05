

package Ficha02;

import javax.swing.JOptionPane;


public class Ex01 {

    
    public static void main(String[] args) {
    
    String senha=JOptionPane.showInputDialog(null,"Digite a sua senha:"); 
    
    
    int n1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Qual o 1º número?"));
    int n2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Qual o 2º número?")); 
    int resposta=JOptionPane.showConfirmDialog(null, 
            "Confirma?",
            "Repetir?",
            JOptionPane.YES_NO_OPTION);
    if(resposta==0){
        JOptionPane.showMessageDialog(null,
                "Clicou no botão Yes");
        JOptionPane.showMessageDialog(null, 
            "A divisão é:"+(n1/n2));
    }
    else{
        JOptionPane.showMessageDialog(null,
                "Clicou no botão No");   
    }
    }

}
   
    

