package Ficha06;

import java.util.regex.Pattern;
import javax.swing.JOptionPane;


public class ProgramaAlunos {
    public static void main(String[] args) {
        
        int Nota1, Nota2, Nota3, Numero;
        String Nome;
        Object[]opcoes={"Inserir","Eliminar","Listar"};
        Object[]opcoes1={"Dados","Média"};
        ArrayAlunos aa =new ArrayAlunos();
                
    do{
        int operacao=JOptionPane.showOptionDialog(null,
                "Selecione a sua opção",
                "Gestão de Alunos",
                JOptionPane.YES_NO_CANCEL_OPTION,
                JOptionPane.PLAIN_MESSAGE,
                null,opcoes,null);
        
        switch(operacao){
            case 0 -> {
                Numero=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Indique o Numero de aluno:","Introduzir Aluno",JOptionPane.QUESTION_MESSAGE));
                    while (Numero < 0){
                        Numero=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Insira um numero de aluno valido:","Introduzir Aluno",JOptionPane.QUESTION_MESSAGE));                       
                    } 
                Nome=JOptionPane.showInputDialog(null,
                        "Indique o Nome do aluno:","Introduzir Aluno",JOptionPane.QUESTION_MESSAGE);
                    while (! Pattern.matches(".*[a-zA-Z]+.*[a-zA-Z]", Nome)){
                    Nome=(JOptionPane.showInputDialog(null, 
                    "Nome tem de ser Alfabetico: ", "Introduzir Aluno",
                    JOptionPane.ERROR_MESSAGE));
                    }
                Nota1=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Indique a 1ª Nota:","Introduzir Aluno",JOptionPane.QUESTION_MESSAGE));
                    while ((Nota1 < 0) | (Nota1 > 20)){
                        Nota1=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Insira uma nota valida:","Introduzir Aluno",JOptionPane.QUESTION_MESSAGE));                       
                    } 
                Nota2=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Indique a 2ª Nota:","Introduzir Aluno",JOptionPane.QUESTION_MESSAGE));
                    while ((Nota2 < 0) | (Nota2 > 20)){
                        Nota2=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Insira uma nota valida:","Introduzir Aluno",JOptionPane.QUESTION_MESSAGE));                       
                    } 
                Nota3=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Indique a 3ª Nota:","Introduzir Aluno",JOptionPane.QUESTION_MESSAGE));
                    while ((Nota3 < 0) | (Nota3 > 20)){
                        Nota3=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Insira uma nota valida:","Introduzir Aluno",JOptionPane.QUESTION_MESSAGE));                       
                    } 
                Alunos alu = new Alunos();
                alu.setNumero(Numero);alu.setNome(Nome);
                alu.setNota1(Nota1);alu.setNota2(Nota2);
                alu.setNota3(Nota3);
                aa.adicionarAluno(alu);
                JOptionPane.showMessageDialog(null, 
                        "Registo Inserido com sucesso","Introduzir Aluno",JOptionPane.INFORMATION_MESSAGE);
            }
            case 1 ->{
                Numero=Integer.parseInt(JOptionPane.showInputDialog(null,
                        "Indique o Numero de aluno","Eliminar Aluno",JOptionPane.QUESTION_MESSAGE));  
                aa.removerAluno(Numero);
                JOptionPane.showMessageDialog(null, 
                        "Registo Eliminado com sucesso","Eliminar Aluno",JOptionPane.INFORMATION_MESSAGE);
            } 
            case 2 -> {
                int operacao1=JOptionPane.showOptionDialog(null,
                "Selecione a sua opção",
                "Gestão de Listas",
                JOptionPane.YES_NO_CANCEL_OPTION,
                JOptionPane.PLAIN_MESSAGE,
                null,opcoes1,null);
                switch(operacao1){
                    case 0 -> {
                        JOptionPane.showMessageDialog(null,
                        aa.listarAlunos(),"Lista Alunos",JOptionPane.INFORMATION_MESSAGE);
                    }
                    case 1 -> {
                        JOptionPane.showMessageDialog(null, 
                        aa.listarMedias(),"Lista Medias",JOptionPane.INFORMATION_MESSAGE);
                    }
                }        
            }                
        }        
    
    }while(JOptionPane.showConfirmDialog(null,
            "Continuar?",
            "Repetir",
            JOptionPane.YES_NO_OPTION)==JOptionPane.YES_OPTION);
        
        
    }

}
