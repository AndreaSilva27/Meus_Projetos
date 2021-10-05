
package Alfa;
import java.text.DecimalFormat;
import javax.swing.JOptionPane;

public class Funcionarios {
private String Funcionarios;
private String Nome,Email;
private int Telemovel;
double Salario;

public Funcionarios(String Nome, String Email, int Telemovel, double Salario)
             {
    this.Nome=Nome;
    this.Email=Email;
    this.Telemovel=Telemovel;
    this.Salario=Salario;

             }

    public void DadosFuncionario(){
    DecimalFormat ft=new DecimalFormat("#,##0.00€");
   
    JOptionPane.showMessageDialog(null,
            "Nome: "+this.Nome +
    
            "\nEmail: "+this.Email +
    
            "\nTelemóvel: "+this.Telemovel +
    
            "\nSalário: "+ft.format(this.getSalario()));
            }

    /**
     * @return the Funcionarios
     */
    public String getFuncionarios() {
        return Funcionarios;
    }

    /**
     * @param Funcionarios the Funcionarios to set
     */
    public void setFuncionarios(String Funcionarios) {
        this.Funcionarios = Funcionarios;
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
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    /**
     * @return the Telemovel
     */
    public int getTelemovel() {
        return Telemovel;
    }

    /**
     * @param Telemovel the Telemovel to set
     */
    public void setTelemovel(int Telemovel) {
        this.Telemovel = Telemovel;
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
    
    
}
        
 
     
    
        
        
   