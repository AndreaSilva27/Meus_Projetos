
package heranca;

import javax.swing.JOptionPane;

public class TestarAnimais {
    
    public static void main(String[] args) {
    // criar uma instância da classe Animais passando como parametros
    // os dados referentes ao animal.
    
    
    Object[] opcoes={"Animais","Peixes","Mamiferos"};
    
    do{
    
        int tipo = JOptionPane.showOptionDialog(null,
                "Selecione o tipo de animal",
                "Herança em java",
                JOptionPane.YES_NO_CANCEL_OPTION,
                JOptionPane.PLAIN_MESSAGE,
                null,opcoes,null);
        switch(tipo){
            case 0->{
    Animais An=new Animais("Camelo","Amarelo","Terra",150,2,4);
    An.DadosAnimal();
            }
            case 1->{
    Peixes Px=new Peixes("Tubarão","Cinza","Mar",300,1.5,0,"Barbatanas");
    Px.DadosPeixes();
            }
            case 2 ->{
    Mamiferos Mf=new Mamiferos("Canguru","Amarelo","Terra",120,13,4,"Fruta");
    Mf.DadosMamiferos();
            }
    }
    }while(JOptionPane.showConfirmDialog(null, 
            "Continuar?",
            "Repetir",
            JOptionPane.YES_NO_CANCEL_OPTION)==JOptionPane.YES_OPTION);
    }
}
