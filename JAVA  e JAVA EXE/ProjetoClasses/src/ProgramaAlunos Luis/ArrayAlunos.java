
package Ficha06;
 
import java.text.DecimalFormat;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class ArrayAlunos {
    
    public ArrayList<Alunos> Aluno= new ArrayList();  
    DecimalFormat ft = new DecimalFormat("###.00");
    DecimalFormat ft1 = new DecimalFormat("###");

    public void adicionarAluno(Alunos a){
        this.Aluno.add(a);
    }
    
    public void removerAluno(int Numero){
        for(int i=0;i<Aluno.size();i++){
            Alunos a = Aluno.get(i);
            if (Numero == a.getNumero()){
                Aluno.remove(i);
                JOptionPane.showMessageDialog(null, 
                    "Registo Eliminado com sucesso","Eliminar Aluno",JOptionPane.INFORMATION_MESSAGE);
                break;
            }
            else{
                JOptionPane.showMessageDialog(null, 
                    "Registo de aluno inexistente","Eliminar Aluno",JOptionPane.INFORMATION_MESSAGE);
            }
        }
    }
    public String listarAlunos(){
        String lista="";
        for(int i=0;i<Aluno.size();i++){
            Alunos a=Aluno.get(i);
            lista+="\nNumero: " + a.getNumero() + "  /  Nome: " + a.getNome() +
                "  /  Nota1: " + ft1.format(a.getNota1()) +
                "  /  Nota2: " + ft1.format(a.getNota2()) + 
                "  /  Nota3: " + ft1.format(a.getNota3());
        }
    return(lista);
    }
    public String listarMedias(){
        String lista="";
        for(int i=0;i<Aluno.size();i++){
            Alunos a=Aluno.get(i);
            float Media = (a.getNota1()+a.getNota2()+a.getNota3())/3;
            lista+="\nNumero: " + a.getNumero() + "  /  Nome: " + a.getNome() +
                "  /  Media: " + ft.format(Media);    
        }
        return(lista);
    }
}
