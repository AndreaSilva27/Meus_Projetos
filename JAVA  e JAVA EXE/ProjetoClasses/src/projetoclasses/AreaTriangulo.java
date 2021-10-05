
package projetoclasses;

import javax.swing.JOptionPane;

public class AreaTriangulo {
    
    public static void main(String[] args) {
    Dimensao Triangulo=new Dimensao();

    int Base=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique valor da base"));
    int Altura=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Indique valor da altura"));
    
    Triangulo.setBase(Base);
    Triangulo.setAltura(Altura);
    Triangulo.setTipo("Triangulo");

    JOptionPane.showMessageDialog(null, 
            "Área do "+Triangulo.getTipo()+" é: "+Triangulo.Area()/2);    
    }

}
