
package Clube;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;


public class Clubes extends Federacao {
private String Sede,Presidente,Vocacao;
private int Jogos,Expectadores;
private double Bilheteria,Direitos,Receita;

    public Clubes(String Nome,String Regiao,int Contato, int Nif,String Sede,String Presidente,
            String Vocacao,int Jogos,int Expectadores,double Bilheteria,double Direitos,double Receita) {
        super(Nome,Regiao,Contato,Nif);
        this.Sede=Sede;
        this.Presidente=Presidente;
        this.Vocacao=Vocacao;
        this.Jogos = 4;
        this.Expectadores=Expectadores;
        this.Bilheteria=Bilheteria;
        this.Direitos=Direitos;
        this.Receita=Receita;
    }
    public void DadosClubes(){
     
        
     DecimalFormat ft=new DecimalFormat("#,##0.00€");
     {
        JOptionPane.showMessageDialog(null,
            "Bilheteria:"+ft.format(this.getBilheteria()));
        JOptionPane.showMessageDialog(null,
            "Direitos:"+ft.format(this.getDireitos()));
        JOptionPane.showMessageDialog(null,
            "Receita Total:"+ft.format(this.getReceita(this.getBilheteria(),this.getDireitos())));
    }
    }
    /**
     * @return the Sede
     */
    public String getSede() {
        return Sede;
    }

    /**
     * @param Sede the Sede to set
     */
    public void setSede(String Sede) {
        this.Sede = Sede;
    }

    /**
     * @return the Presidente
     */
    public String getPresidente() {
        return Presidente;
    }

    /**
     * @param Presidente the Presidente to set
     */
    public void setPresidente(String Presidente) {
        this.Presidente = Presidente;
    }

    /**
     * @return the Vocacao
     */
    public String getVocacao() {
        return Vocacao;
    }

    /**
     * @param Vocacao the Vocacao to set
     */
    public void setVocacao(String Vocacao) {
        this.Vocacao = Vocacao;
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
     * @return the Expectadores
     */
    public int getExpectadores() {
        return Expectadores;
    }

    /**
     * @param Expectadores the Expectadores to set
     */
    public void setExpectadores(int Expectadores) {
        this.Expectadores = Expectadores;
    }

    /**
     * @return the Bilheteria
     */
    public double getBilheteria() {
        return (Expectadores*12.5);
    }

    /**
     * @param Bilheteria the Bilheteria to set
     */
    public void setBilheteria(double Bilheteria) {
        this.Bilheteria = Bilheteria;
    }

    /**
     * @param Bilheteria
     * @param Direitos
     * @return the Receita
     */
    public double getReceita(double Bilheteria,double Direitos) {
        return (Bilheteria+Direitos);
    }

    /**
     * @param Receita the Receita to set
     */
    public void setReceita(double Receita) {
        this.Receita = Receita;
    }

    /**
     * @return the Direitos
     */
    public double getDireitos() {
        return (Jogos*120000.00);
    }

    /**
     * @param Direitos the Direitos to set
     */
    public void setDireitos(double Direitos) {
        this.Direitos = Direitos;
    }

    
}
