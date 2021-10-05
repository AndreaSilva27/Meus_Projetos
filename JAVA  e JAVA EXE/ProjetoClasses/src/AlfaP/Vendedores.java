package AlfaP;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;


public class Vendedores extends Funcionarios{
private double Vendas;
public Vendedores(String Nome, String Email, int Movel,
        double Salario,double Vendas){
    super(Nome,Email,Movel,Salario);
    this.Vendas=Vendas;
}
public void setVendas(double Vendas){
    this.Vendas=Vendas;
}
public double getVendas(){
    return(this.Vendas);
}
public double getTotal(double Salario,double Vendas){
    return(Salario+this.Vendas*0.05);
}
public void Salario_Vendedor(){
    DecimalFormat ft=new DecimalFormat("#,##0.00 €");
    JOptionPane.showMessageDialog(null,
            "O Vendedor "+super.getNome()+
            "\nTem de salário total:"+
            ft.format(getTotal(super.getSalario(),this.Vendas)));
}
}
