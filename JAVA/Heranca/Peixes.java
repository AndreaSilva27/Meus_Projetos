
package heranca;

import javax.swing.JOptionPane;

public class Peixes extends Animais{
private String Caracteristicas;

public Peixes(String Nome, String Cor, String Ambiente, double Comprimento,
        double Velocidade, int Patas,String Caracteristicas){
    
    super(Nome,Cor,Ambiente,Comprimento,Velocidade,Patas);
    this.Caracteristicas=Caracteristicas;
}
public  void DadosPeixes(){
    super.DadosAnimal();
    JOptionPane.showMessageDialog(null,
            "Caracteristica:"+this.getCaracteristicas());
}

    /**
     * @return the Caracteristicas
     */
    public String getCaracteristicas() {
        return Caracteristicas;
    }

    /**
     * @param Caracteristicas the Caracteristicas to set
     */
    public void setCaracteristicas(String Caracteristicas) {
        this.Caracteristicas = Caracteristicas;
    }

}
