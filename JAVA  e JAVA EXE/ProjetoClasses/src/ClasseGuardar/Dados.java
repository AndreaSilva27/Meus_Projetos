package ClasseGuardar;

import java.util.ArrayList;

public class Dados {
public ArrayList<Veiculos> Carro= new ArrayList();  

// método para adicionar um veiculo
public void adicionarViatura(Veiculos c){
    this.Carro.add(c);
}

// método para remover um veiculo
public void removeViatura(String Matricula){
    for(int i=0;i<Carro.size();i++){
        Veiculos c=Carro.get(i);
        if (c.getMatricula().equals(Matricula)){
            Carro.remove(i);
            break;
        }
    }
}
public String listarViaturas(){
    String lista="";
    for(int i=0;i<Carro.size();i++){
        Veiculos c=Carro.get(i);
        lista+="\nMarca:"+c.getMarca()+" / Matricula:"+c.getMatricula()+
                " / Modelo:"+c.getModelo()+" / Preço:"+c.getPreco();
    }
    return(lista);
}

}
