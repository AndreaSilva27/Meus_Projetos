package AlfaP;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;

public class Financeiros extends Funcionarios{
private double Premio;
public Financeiros(String Nome, String Email, int Movel,
        double Salario,double Premio){
    super(Nome,Email,Movel,Salario);
    this.Premio=Premio;
}
public void setPremio(double Premio){
    this.Premio=Premio;
}
public double getPremio(){
    return(this.Premio);
}
public double getTotal(double Salario,double Premio){
    return(Salario+this.Premio);
}
public void Salario_Financeiro(){
    DecimalFormat ft=new DecimalFormat("#,##0.00 €");
    JOptionPane.showMessageDialog(null,
            "O financeiro "+super.getNome()+
            "\nTem de salário total:"+
            ft.format(getTotal(super.getSalario(),this.Premio)));
}        
}
