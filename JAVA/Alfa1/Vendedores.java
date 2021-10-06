
package Alfa1;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;


public class Vendedores extends Funcionarios {
    
    private double Vendas;
    private double SalarioV;
    
    public Vendedores(String Nome, String Email, int Telemovel, double Salario,
        double Vendas, double SalarioV){
    
    super(Nome,Email,Telemovel,Salario);
    this.Vendas=Vendas;
    this.SalarioV=SalarioV;
    
}   
    
    
    public void DadosVendedor(){
    
        
    DecimalFormat ft=new DecimalFormat("#,##0.00€");
    {
        
            JOptionPane.showMessageDialog(null,
            "Salário Base + Vendas com Comissão de 5%: "+ft.format(getSalarioV(super.getSalario(),this.getVendas())));
    }
    
    }
    
    
        
    

    
   public double getSalarioV(double Salario,double Vendas) {
        return (Salario+ this.Vendas*0.05);
    }

    
    public void setSalarioV(double SalarioV) {
        this.SalarioV = SalarioV;
    }

    /**
     * @return the Vendas
     */
    public double getVendas() {
        return Vendas;
    }

    /**
     * @param Vendas the Vendas to set
     */
    public void setVendas(double Vendas) {
        this.Vendas = Vendas;
    }

    
   
    
    
}
