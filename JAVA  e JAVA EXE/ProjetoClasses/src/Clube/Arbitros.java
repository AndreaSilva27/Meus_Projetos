
package Clube;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;


public class Arbitros extends Federacao {
    
 private String Morada,Classificacao,Profissao;
 private int Jogos;
 private double Salario,Ajuda,Total;

    public Arbitros(String Nome,String Regiao,int Contato, int Nif,String Morada,String Classificacao,String Profissao,
            int Jogos,double Salario,double Ajuda,double Total) {
        super(Nome,Regiao,Contato,Nif);
        this.Morada=Morada;
        this.Classificacao=Classificacao;
        this.Profissao=Profissao;
        this.Jogos = 4;
        this.Salario=Salario;
        this.Ajuda=Ajuda;
        this.Total=Total;
        
    }
    public void DadosArbitros(){
     
        
     DecimalFormat ft=new DecimalFormat("#,##0.00€");
     {
        JOptionPane.showMessageDialog(null,
            "Ajuda:"+ft.format(this.getAjuda()));
        JOptionPane.showMessageDialog(null,
            "Salário Total:"+ft.format(getTotal(this.getSalario(),this.getAjuda())));
    }
    }
    /**
     * @return the Morada
     */
    public String getMorada() {
        return Morada;
    }

    /**
     * @param Morada the Morada to set
     */
    public void setMorada(String Morada) {
        this.Morada = Morada;
    }

    /**
     * @return the Classificacao
     */
    public String getClassificacao() {
        return Classificacao;
    }

    /**
     * @param Classificacao the Classificacao to set
     */
    public void setClassificacao(String Classificacao) {
        this.Classificacao = Classificacao;
    }

    /**
     * @return the Profissao
     */
    public String getProfissao() {
        return Profissao;
    }

    /**
     * @param Profissao the Profissao to set
     */
    public void setProfissao(String Profissao) {
        this.Profissao = Profissao;
    }

    /**
     * @return the Jogos
     */
    public int getJogos() {
        return Jogos;
    }

    /**
     * @param Jogos the Jogo to set
     */
    public void setJogos(int Jogos) {
        this.Jogos = Jogos;
    }

    /**
     * @return the Salario
     */
    public double getSalario() {
        return Salario;
    }

    /**
     * @param Salario the Salario to set
     */
    public void setSalario(double Salario) {
        this.Salario = Salario;
    }

    /**
     
     * @return the Ajuda
     */
    public double getAjuda() {
        return (Jogos*240.57);
    }

    /**
     * @param Ajuda the Ajuda to set
     */
    public void setAjuda(double Ajuda) {
        this.Ajuda = Ajuda;
    }

    /**
     * @param Salario
     * @param Ajuda
     * @return the Total
     */
    public double getTotal(double Salario,double Ajuda) {
        return (Salario+Ajuda);
    }

    /**
     * @param Total the Total to set
     */
    public void setTotal(double Total) {
        this.Total = Total;
    }

}/**
     * @return the Salario
     */
   