
package Clube;


public class Federacao {
 
private String Nome,Regiao;
private int Contato,Nif;

public Federacao(String Nome, String Regiao, int Contato, int Nif)
             {
    this.Nome=Nome;
    this.Regiao=Regiao;
    this.Contato=Contato;
    this.Nif=Nif;

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
     * @return the Regiao
     */
    public String getRegiao() {
        return Regiao;
    }

    /**
     * @param Regiao the Regiao to set
     */
    public void setRegiao(String Regiao) {
        this.Regiao = Regiao;
    }

    /**
     * @return the Contato
     */
    public int getContato() {
        return Contato;
    }

    /**
     * @param Contato the Contato to set
     */
    public void setContato(int Contato) {
        this.Contato = Contato;
    }

    /**
     * @return the Nif
     */
    public int getNif() {
        return Nif;
    }

    /**
     * @param Nif the Nif to set
     */
    public void setNif(int Nif) {
        this.Nif = Nif;
    }
}
