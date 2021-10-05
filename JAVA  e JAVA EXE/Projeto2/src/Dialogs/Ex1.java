/*
Caixas de diálogo são interfaces já existentes. Permitem a introdução de
dados ou apresentação dos mesmos.

*/
package dialogs;

import javax.swing.JOptionPane;

public class Ex1 {
    
    public static void main(String[] args) {
    // showInputDialog() é uma caixa de input.
    String Nome=JOptionPane.showInputDialog(null,"Qual o seu nome?");
    
    // showMessageDialog() é uma caixa de saida
    JOptionPane.showMessageDialog(null, "Bom dia "+Nome);
    
    // showConfirmDialog() é uma caixa de confirmação
    int resposta=JOptionPane.showConfirmDialog(null, 
            "Continuar",
            "Repetir?",
            JOptionPane.YES_NO_OPTION);
    if(resposta==0){
        JOptionPane.showMessageDialog(null,
                "Clicou no botão Yes");
    }
    else{
        JOptionPane.showMessageDialog(null,
                "Clicou no botão No");   
    }
    
    }
}
