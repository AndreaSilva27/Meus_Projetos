package heranca;

import javax.swing.JOptionPane;

public class Mamiferos extends Animais{
private String Alimento;

public Mamiferos(String Nome, String Cor, String Ambiente, double Comprimento,
        double Velocidade, int Patas, String Alimento){
    
    super(Nome,Cor,Ambiente,Comprimento,Velocidade,Patas);
    this.Alimento=Alimento;
    

}  
public  void DadosMamiferos(){
    super.DadosAnimal();
    JOptionPane.showMessageDialog(null,
            "Alimento:"+this.getAlimento());
}

    /**
     * @return the Alimento
     */
    public String getAlimento() {
        return Alimento;
    }

    /**
     * @param Alimento the Alimento to set
     */
    public void setAlimento(String Alimento) {
        this.Alimento = Alimento;
    }


}
