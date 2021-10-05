package projetoclasses;

public class Dimensao {    
private int Base, Altura;
private String Tipo;
// setters e getters
// setters
public void setBase(int Base){
    this.Base=Base;
}
public void setAltura(int Altura){
    this.Altura=Altura;
}
// getters
public int getBase(){
    return(this.Base);
}
public int getAltura(){
    return(this.Altura);
}

public void setTipo(String Tipo){
    this.Tipo=Tipo;
}
public String getTipo(){
    return(this.Tipo);
}
        
// Criar um método para cálculo da área
public int Area(){
    if (this.Tipo.equals("Triangulo")){
        return(Base*Altura)/2;
    }
    else{
        return(Base*Altura);
    }    
}
    
}

