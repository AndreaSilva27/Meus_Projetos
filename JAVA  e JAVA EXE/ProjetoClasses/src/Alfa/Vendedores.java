
package Alfa;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;


public class Vendedores extends Funcionarios {
    
    
    private double SalarioV;
    public Vendedores(String Nome, String Email, int Telemovel, double Salario,
        double SalarioV){
    
    super(Nome,Email,Telemovel,Salario);
     
    this.SalarioV=SalarioV;
    
}   
    
    
    public void DadosVendedor(){
    super.DadosFuncionario();
        
    DecimalFormat ft=new DecimalFormat("#,##0.00€");
    {
        JOptionPane.showMessageDialog(null,
            "Salário Base + Comissão de 5%: "+ft.format(this.getSalarioV()));
    }
    
    }
    
    
        
    

    
   public double getSalarioV() {
        return SalarioV;
    }

    
    public void setSalarioV(double SalarioV) {
        this.SalarioV = SalarioV;
    }

    
   
    
    
}
