/*
Caixas de diálogo são interfaces já existentes. Permitem a introdução de
dados ou apresentação dos mesmos.

*/

package Dialogs;

import javax.swing.JOptionPane;


public class Ex2 {

    
   
     public static void main(String[] args) {
   // showConfirmDialog() é uma caixa de confirmação
    int resposta=JOptionPane.showConfirmDialog(null, 
            "Continuar",
            "Repetir?",
            JOptionPane.YES_NO_OPTION);
    switch(resposta){
        case 0 -> JOptionPane.showMessageDialog(null,
                "Clicou no botão Yes");
        case 1 -> JOptionPane.showMessageDialog(null,
                "Clicou no botão No");
        default -> JOptionPane.showMessageDialog(null,
                "Erro !!!");                  
    }
     }
}     
    
