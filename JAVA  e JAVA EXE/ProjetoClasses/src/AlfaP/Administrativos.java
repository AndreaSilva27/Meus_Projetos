
package AlfaP;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;

public class Administrativos extends Funcionarios{
private double HorasExtras;
public Administrativos(String Nome, String Email, int Movel,
        double Salario,double HorasExtras){
    super(Nome,Email,Movel,Salario);
    this.HorasExtras=HorasExtras;
}
public void setHorasExtras(double HorasExtras){
    this.HorasExtras=HorasExtras;
}
public double getHorasExtras(){
    return(this.HorasExtras);
}
public double getTotal(double Salario,double HorasExtras){
    return(Salario+this.HorasExtras*3);
}
public void Salario_Administrativo(){
    DecimalFormat ft=new DecimalFormat("#,##0.00 €");
    JOptionPane.showMessageDialog(null,
            "O administrativo "+super.getNome()+
            "\nTem de salário total:"+
            ft.format(getTotal(super.getSalario(),this.HorasExtras)));
}    
}
