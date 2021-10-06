package heranca;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;

public class Animais {
private String Nome, Cor, Ambiente;
private double Comprimento, Velocidade;
private int Patas;

// método construtor da classe
public Animais(String Nome, String Cor, String Ambiente, double Comprimento,
        double Velocidade, int Patas){
    this.Nome=Nome;
    this.Cor=Cor;
    this.Ambiente=Ambiente;
    this.Comprimento=Comprimento;
    this.Velocidade=Velocidade;
    this.Patas=Patas;
}
public void DadosAnimal(){
    DecimalFormat ft=new DecimalFormat("0.00 cm");
    DecimalFormat ft1=new DecimalFormat("0.0 ms");
    JOptionPane.showMessageDialog(null,
            "Nome:"+this.Nome+
            "\nCor:"+this.Cor+
            "\nAmbiente:"+this.Ambiente+
            "\nComprimento:"+ft.format(this.Comprimento)+
            "\nVelocidade:"+ft1.format(this.Velocidade)+
            "\nNº Patas:"+this.Patas);
}
    /**
     * @return the Nome
     */
    public String getNome() {
        return Nome;
    }

    /**
     * @param Nome the Nome to set
     */
    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    /**
     * @return the Cor
     */
    public String getCor() {
        return Cor;
    }

    /**
     * @param Cor the Cor to set
     */
    public void setCor(String Cor) {
        this.Cor = Cor;
    }

    /**
     * @return the Ambiente
     */
    public String getAmbiente() {
        return Ambiente;
    }

    /**
     * @param Ambiente the Ambiente to set
     */
    public void setAmbiente(String Ambiente) {
        this.Ambiente = Ambiente;
    }

    /**
     * @return the Comprimento
     */
    public double getComprimento() {
        return Comprimento;
    }

    /**
     * @param Comprimento the Comprimento to set
     */
    public void setComprimento(double Comprimento) {
        this.Comprimento = Comprimento;
    }

    /**
     * @return the Velocidade
     */
    public double getVelocidade() {
        return Velocidade;
    }

    /**
     * @param Velocidade the Velocidade to set
     */
    public void setVelocidade(double Velocidade) {
        this.Velocidade = Velocidade;
    }

    /**
     * @return the Patas
     */
    public int getPatas() {
        return Patas;
    }

    /**
     * @param Patas the Patas to set
     */
    public void setPatas(int Patas) {
        this.Patas = Patas;
    }


}
