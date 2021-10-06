
package Escola;

import java.text.DecimalFormat;
import java.util.ArrayList;




  

public class Notas {
public ArrayList<Alunos> Aluno= new ArrayList();

public void adicionarAlunos(Alunos a){
    this.Aluno.add(a);
    
}
public void removerAlunos(String Nome){
    for(int i=0;i<Aluno.size();i++){
        Alunos a=Aluno.get(i);
        if (a.getNome().equals(Nome)){
            Aluno.remove(i);
            break;
        }
    }
}
public String listarAlunos(){
    DecimalFormat ft=new DecimalFormat("#0.00");
    String lista="";
    for(int i=0;i<Aluno.size();i++){
        Alunos a=Aluno.get(i);
        lista+="\nNúmero:"+a.getNumero()+"\nNome:"+a.getNome()+
                "\nNota1:"+ft.format(a.getNota1())+" / Nota2:"+ft.format(a.getNota2())
                +" / Nota3:"+ft.format(a.getNota3());
    }
    return(lista);
}
public String listarMedia(){
    DecimalFormat ft=new DecimalFormat("#0.00");
    String lista="";
    for(int i=0;i<Aluno.size();i++){
        Alunos a=Aluno.get(i);
        lista+="\nNúmero:"+a.getNumero()+"\nNome:"+a.getNome()
                +"\nMédia:"+ft.format(a.getMedia());
    }
    return(lista);
}
}


