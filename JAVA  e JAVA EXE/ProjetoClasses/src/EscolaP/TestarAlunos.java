

package EscolaP;


import javax.swing.JOptionPane;
import java.text.DecimalFormat;

public class TestarAlunos {

    
   
    public static void main(String[] args) {
    Object[]opcoes={"Inserir","Eliminar","Listar Notas","Listar Médias"};
    Notas n=new Notas();
    do{
        int opcao=JOptionPane.showOptionDialog(null,
                "Gestão de Alunos e Notas \nSelecione a sua opção",
                "Escola Vem Aprender",
                JOptionPane.YES_NO_CANCEL_OPTION,
                JOptionPane.PLAIN_MESSAGE,
                null,opcoes,null);  
    
        switch(opcao){
                 case 0 -> {
                int Numero=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Digite o Seu Número:"));
                String Nome=JOptionPane.showInputDialog(null,
                        "Digite o Seu Nome:");
                float Nota1=Float.parseFloat(JOptionPane.showInputDialog(null,
                        "Digite o valor da Nota1:"));
                float Nota2=Float.parseFloat(JOptionPane.showInputDialog(null,
                        "Digite o valor da Nota2:"));
                float Nota3=Float.parseFloat(JOptionPane.showInputDialog(null,
                        "Digite o valor da Nota3:"));               
                Alunos a=new Alunos();
                a.setNumero(Numero);a.setNome(Nome);
                a.setNota1(Nota1);a.setNota2(Nota2);a.setNota3(Nota3);
                n.adicionarAlunos(a);
                JOptionPane.showMessageDialog(null, 
                        "Registo Inserido");
            }
                 
            case 1 ->{
               String Nome=JOptionPane.showInputDialog(null,
                        "Indique o Nome do aluno a remover:");  
               n.removerAlunos(Nome);
               JOptionPane.showMessageDialog(null, 
                        "Registo Eliminado");
            } 
            
            case 2 -> {
               JOptionPane.showMessageDialog(null,
                       n.listarAlunos());
            }                
             case 3 -> {
               JOptionPane.showMessageDialog(null,
                       n.listarMedia ());
            }                
        }
    
    }while(JOptionPane.showConfirmDialog(null,
            "Continuar?",
            "Repetir",
            JOptionPane.YES_NO_OPTION)==JOptionPane.YES_OPTION);
    
}
}
