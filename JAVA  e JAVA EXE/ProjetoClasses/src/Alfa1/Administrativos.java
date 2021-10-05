
package Alfa1;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;


public class Administrativos extends Funcionarios {
 private double SalarioA;
 private int Horas;   
public Administrativos(String Nome, String Email, int Telemovel, double Salario,
        int Horas,double SalarioA ){
    
    super(Nome,Email,Telemovel,Salario);
    this.Horas=Horas;
    this.SalarioA=SalarioA;
    
    
}       
     public void DadosAdministrativo(){
     
        
     DecimalFormat ft=new DecimalFormat("#,##0.00€");
     {
        
        JOptionPane.showMessageDialog(null,
            "Salário Total:"+ft.format(getSalarioA(super.getSalario(),this.getHoras())));
    }
     
     }
    
    



    /**
     * @return the SalarioA
     */
    public double getSalarioA(double Salario,int Horas) {
        return (Salario+(this.Horas*3));
    }

    /**
     * @param SalarioA the SalarioA to set
     */
    public void setSalarioA(double SalarioA) {
        this.SalarioA = SalarioA;
    }

    /**
     * @return the Horas
     */
    public int getHoras() {
        return Horas;
    }

    /**
     * @param Horas the Horas to set
     */
    public void setHoras(int Horas) {
        this.Horas = Horas;
    }
}
