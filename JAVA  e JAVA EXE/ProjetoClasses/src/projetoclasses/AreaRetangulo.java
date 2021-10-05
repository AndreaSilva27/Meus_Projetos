
package projetoclasses;

import javax.swing.JOptionPane;

public class AreaRetangulo {
    
    public static void main(String[] args) {
     
    Dimensao Retangulo = new Dimensao();
    
    int lado1=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique valor do lado maior"));
    int lado2=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique valor do lado menor"));
    
    Retangulo.setBase(lado1);
    Retangulo.setAltura(lado2);
    Retangulo.setTipo("Retangulo");
    
    JOptionPane.showMessageDialog(null, 
            "Área do "+Retangulo.getTipo()+" é: "+Retangulo.Area());
        
    }

}
