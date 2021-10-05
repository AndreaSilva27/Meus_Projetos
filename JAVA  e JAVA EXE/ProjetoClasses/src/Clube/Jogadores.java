
package Clube;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;


public class Jogadores extends Federacao {
private String Origem,Clube,Posicao;
private double Altura,Peso,Salario_base,Premio,Imagem,Salario_total;
private int Jogos,Vitorias;

    public Jogadores(String Nome,String Regiao,int Contato, int Nif,String Origem,String Clube,
            String Posicao,double Altura,double Peso,double Salario_base,int Jogos,int Vitorias,
            double Premio,double Imagem,double Salario_total) {
        super(Nome,Regiao,Contato,Nif);
        this.Origem=Origem;
        this.Clube=Clube;
        this.Posicao=Posicao;
        this.Altura=Altura;
        this.Peso=Peso;
        this.Salario_base=Salario_base;
        this.Jogos = 4;
        this.Vitorias=Vitorias;
        this.Premio=Premio;
        this.Imagem=Imagem;
        this.Salario_total=Salario_total;
    }
    public void DadosJogadores(){
     
        
     DecimalFormat ft=new DecimalFormat("#,##0.00€");
     DecimalFormat ft1=new DecimalFormat("#0.00m");
     DecimalFormat ft2=new DecimalFormat("##0.00kg");
     {
        JOptionPane.showMessageDialog(null,
            "Prémio:"+ft.format(this.getPremio()));
        JOptionPane.showMessageDialog(null,
            "Direitos de Imagem:"+ft.format(this.getImagem()));
        JOptionPane.showMessageDialog(null,
            "Salário Total:"+ft.format(this.getSalario_total(this.getSalario_base(),this.getPremio(),this.getImagem())));
    }
    }
    /**
     * @return the Origem
     */
    public String getOrigem() {
        return Origem;
    }

    /**
     * @param Origem the Origem to set
     */
    public void setOrigem(String Origem) {
        this.Origem = Origem;
    }

    /**
     * @return the Clube
     */
    public String getClube() {
        return Clube;
    }

    /**
     * @param Clube the Clube to set
     */
    public void setClube(String Clube) {
        this.Clube = Clube;
    }

    /**
     * @return the Posicao
     */
    public String getPosicao() {
        return Posicao;
    }

    /**
     * @param Posicao the Posicao to set
     */
    public void setPosicao(String Posicao) {
        this.Posicao = Posicao;
    }

    /**
     * @return the Altura
     */
    public double getAltura() {
        return Altura;
    }

    /**
     * @param Altura the Altura to set
     */
    public void setAltura(double Altura) {
        this.Altura = Altura;
    }

    /**
     * @return the Peso
     */
    public double getPeso() {
        return Peso;
    }

    /**
     * @param Peso the Peso to set
     */
    public void setPeso(double Peso) {
        this.Peso = Peso;
    }

    /**
     * @return the Salario_base
     */
    public double getSalario_base() {
        return Salario_base;
    }

    /**
     * @param Salario_base  the Salario_base to    
     */

    public void setSalario_base(double Salario_base) {
        this.Salario_base = Salario_base;
    }

    /**
     * @return the Premio
     */
    public double getPremio() {
        return (Vitorias*650.00);
    }

    /**
     * @param Premio the Premio to set
     */
    public void setPremio(double Premio) {
        this.Premio = Premio;
    }

    /**
     * @return the Imagem
     */
    public double getImagem() {
        return (Salario_base*0.115);
    }

    /**
     * @param Imagem the Imagem to set
     */
    public void setImagem(double Imagem) {
        this.Imagem = Imagem;
    }

    /**
     * @return the Jogos
     */
    public int getJogos() {
        return Jogos;
    }

    /**
     * @param Jogos the Jogos to set
     */
    public void setJogos(int Jogos) {
        this.Jogos = Jogos;
    }

    /**
     * @return the Vitorias
     */
    public int getVitorias() {
        return Vitorias;
    }

    /**
     * @param Vitorias the Vitorias to set
     */
    public void setVitorias(int Vitorias) {
        this.Vitorias = Vitorias;
    }

    /**
     * @param Salario_base
     * @param Premio
     
     * @param Imagem
     * @return the Salario_total
     */
    public double getSalario_total(double Salario_base,double Premio, double Imagem) {
        return (Salario_base+Premio+Imagem);
    }

    /**
     * @param Salario_total the Salario_total to set
     */
    public void setSalario_total(double Salario_total) {
        this.Salario_total = Salario_total;
    }
}
