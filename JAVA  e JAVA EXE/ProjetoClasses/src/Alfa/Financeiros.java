
package Alfa;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;

public class Financeiros extends Funcionarios {
 private double SalarioF;
 private double Variavel;
 
public Financeiros(String Nome, String Email, int Telemovel, double Salario,
        double Variavel,double SalarioF ){
    
    super(Nome,Email,Telemovel,Salario);
    this.Variavel=Variavel;
    this.SalarioF=SalarioF;
    
}
public void DadosFinanceiro(){
    super.DadosFuncionario();
       
    DecimalFormat ft=new DecimalFormat("#,##0.00€");
    DecimalFormat ft1=new DecimalFormat("#,##0.00€");
    {
        JOptionPane.showMessageDialog(null,
            "Valor do Variável:"+ft.format(this.getVariavel())); 
        JOptionPane.showMessageDialog(null,
            "Salário Total:"+ft1.format(this.getSalarioF()));
    }
}
    
     

    /**
     * @return the SalarioF
     */
    public double getSalarioF() {
        return SalarioF;
    }

    /**
     * @param SalarioF the SalarioF to set
     */
    public void setSalarioF(double SalarioF) {
        this.SalarioF = SalarioF;
    }

    /**
     * @return the Variavel
     */
    public double getVariavel() {
        return Variavel;
    }

    /**
     * @param Variavel the Variavel to set
     */
    public void setVariavel(double Variavel) {
        this.Variavel = Variavel;
    }
}   


