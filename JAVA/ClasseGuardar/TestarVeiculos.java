package ClasseGuardar;

import javax.swing.JOptionPane;

public class TestarVeiculos {
    
    public static void main(String[] args) {
    Object[]opcoes={"Inserir","Eliminar","Listar"};
    Dados d=new Dados();
    do{
        int operacao=JOptionPane.showOptionDialog(null,
                "Selecione a sua opção",
                "Gestão de Viaturas",
                JOptionPane.YES_NO_CANCEL_OPTION,
                JOptionPane.PLAIN_MESSAGE,
                null,opcoes,null);
        switch(operacao){
            case 0 -> {
                String Marca=JOptionPane.showInputDialog(null,
                        "Indique a Marca");
                String Modelo=JOptionPane.showInputDialog(null,
                        "Indique o Modelo");
                String Matricula=JOptionPane.showInputDialog(null,
                        "Indique a Matricula");
                float Preco=Float.parseFloat(JOptionPane.showInputDialog(null,
                        "Qual o Preço"));               
                Veiculos c=new Veiculos();
                c.setMarca(Marca);c.setModelo(Modelo);
                c.setMatricula(Matricula);c.setPreco(Preco);
                d.adicionarViatura(c);
                JOptionPane.showMessageDialog(null, 
                        "Registo Inserido");
            }
            case 1 ->{
               String Matricula=JOptionPane.showInputDialog(null,
                        "Indique a Matricula");  
               d.removeViatura(Matricula);
               JOptionPane.showMessageDialog(null, 
                        "Registo Eliminado");
            } 
           case 2 -> {
               JOptionPane.showMessageDialog(null,
                       d.listarViaturas());
            }                
        }
        
        
    }while(JOptionPane.showConfirmDialog(null,
            "Continuar?",
            "Repetir",
            JOptionPane.YES_NO_OPTION)==JOptionPane.YES_OPTION);
    
    }

}
