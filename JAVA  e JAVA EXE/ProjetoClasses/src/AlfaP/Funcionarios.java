package AlfaP;


public class Funcionarios {
private String Nome,Email;
private int Movel;
private double Salario;

public Funcionarios(String Nome, String Email,
        int Movel, double Salario){
    this.Nome=Nome;
    this.Email=Email;
    this.Movel=Movel;
    this.Salario=Salario;
}
// setters e getters
public void setNome(String Nome){
    this.Nome=Nome;
}
public  String getNome(){
    return(this.Nome);
}
public void setMail(String Email){
    this.Email=Email;
}
public String getMail(){
    return(this.Email);
}
public void setMovel(int Movel){
    this.Movel=Movel;
}
public int getMovel(){
    return(this.Movel);
}
public void setSalario(double Salario){
    this.Salario=Salario;
}
public double getSalario(){
    return(this.Salario);
}
}
