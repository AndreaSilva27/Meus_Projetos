
package Escola;


public class Alunos {

private int Numero;
private String Nome;
private float Nota1,Nota2,Nota3,Media;



   
    /**
     * @return the Numero
     */
    public int getNumero() {
        return Numero;
    }

    /**
     * @param Numero the Numero to set
     */
    public void setNumero(int Numero) {
        this.Numero = Numero;
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
     * @return the Nota1
     */
    public float getNota1() {
        return Nota1;
    }

    /**
     * @param Nota1 the Nota1 to set
     */
    public void setNota1(float Nota1) {
        this.Nota1 = Nota1;
    }

    /**
     * @return the Nota2
     */
    public float getNota2() {
        return Nota2;
    }

    /**
     * @param Nota2 the Nota2 to set
     */
    public void setNota2(float Nota2) {
        this.Nota2 = Nota2;
    }

    /**
     * @return the Nota3
     */
    public float getNota3() {
        return Nota3;
    }

    /**
     * @param Nota3 the Nota3 to set
     */
    public void setNota3(float Nota3) {
        this.Nota3 = Nota3;
    }

    /**
     
     * @return the Media
     */
    public float getMedia() {
        return ((Nota1+Nota2+Nota3)/3);
    }

    /**
     * @param Media the Media to set
     */
    public void setMedia(float Media) {
        this.Media = Media;
    }

    

    
    
    
}
