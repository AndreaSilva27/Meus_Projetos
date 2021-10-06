 
 
package Calculadora;


public class Calculo {
private int Numero1, Numero2;
private String Calculo;

public void setNumero1(int Numero1){
    this.Numero1=Numero1;
}
public void setNumero2(int Numero2){
    this.Numero2=Numero2;
}
public int getNumero1(){
    return(this.Numero1);
}
public int getNumero2(){
    return(this.Numero2);
}
public void setCalculo(String Calculo){
    this.Calculo=Calculo;
}
public String getCalculo(){
    return(this.Calculo);
}

public int Calculo(){
    if (this.Calculo.equals("Soma")){
        return(Numero1+Numero2);
    }
    else if (this.Calculo.equals("Subtração")){
        return(Numero1-Numero2);
    }
    else if (this.Calculo.equals("Multiplicação")){
        return(Numero1*Numero2);
    }
    else{
        return(Numero1/Numero2);
    }
}
}

