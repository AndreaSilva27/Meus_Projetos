

package Clube;

import javax.swing.JOptionPane;


public class TestarFederacao {

    
    public static void main(String[] args) {
    
        String Nome,Regiao,Morada,Classificacao,Profissao,Sede,Presidente,Vocacao,
                Origem,Clube,Posicao;
        int Contato, Nif,Jogos;
        Jogos = 4;
        int Expectadores,Vitorias;
        double Salario = 0,Ajuda = 0,Total = 0,Bilheteria = 0,Direitos = 0,
                Receita = 0,Altura,Peso,Salario_base =0,Premio = 0,Imagem = 0,Salario_total = 0;
        
        
        Object[] opcoes={"Árbitros","Clubes","Jogadores"};
        
        do{
        
        int Entidade = JOptionPane.showOptionDialog(null,
                "Olá e Benvindo!\nSelecione o Tipo de Entidade:",
                "Federação Portuguesa de Futebol",
                JOptionPane.YES_NO_CANCEL_OPTION,
                JOptionPane.PLAIN_MESSAGE,
                null,opcoes,null);
        Nome=JOptionPane.showInputDialog(null,
            "Nome: ");
        Regiao=JOptionPane.showInputDialog(null,
            "Região: ");
        Contato=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Telemóvel:"));
        Nif=Integer.parseInt(JOptionPane.showInputDialog(null,
            "NIF:"));
        
        switch(Entidade){
            
            case 0->{ 
                Morada=JOptionPane.showInputDialog(null,
            "Indique o Conselho de Residência: ");
                Classificacao=JOptionPane.showInputDialog(null,
            "Indique a classificação: ");
                Profissao=JOptionPane.showInputDialog(null,
            "Indique sua Profissão: ");
                JOptionPane.showMessageDialog(null,
            "Jogos:"+Jogos);
                Salario=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Indique o Salário:"));
                Arbitros a= new Arbitros(Nome,Regiao,Contato,Nif,Morada,Classificacao,Profissao,
                Jogos,Salario,Ajuda,Total);
                a.DadosArbitros();
        }
            
            case 1->{ 
                Sede=JOptionPane.showInputDialog(null,
            "Indique a Sede Social: ");
                Presidente=JOptionPane.showInputDialog(null,
            "Presidente: ");
                Vocacao=JOptionPane.showInputDialog(null,
            "Indique a Vocação: ");
                JOptionPane.showMessageDialog(null,
            "Jogos:"+Jogos);
                Expectadores=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Total de Expectadores:"));
                Clubes c= new Clubes(Nome,Regiao,Contato,Nif,Sede,Presidente,Vocacao,
                Jogos,Expectadores,Bilheteria,Direitos,Receita);
                c.DadosClubes();
        }
             case 2->{ 
                Origem=JOptionPane.showInputDialog(null,
            "País de Origem: ");
                Clube=JOptionPane.showInputDialog(null,
            "Clube: ");
                Posicao=JOptionPane.showInputDialog(null,
            "Posição: ");
                Altura=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Altura:"));
                Peso=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Peso:"));
                Salario_base=Double.parseDouble(JOptionPane.showInputDialog(null,
            "Indique o Salário:"));
                JOptionPane.showMessageDialog(null,
            "Jogos:"+Jogos);
                Vitorias=Integer.parseInt(JOptionPane.showInputDialog(null,
            "Vitórias:"));
                Jogadores j= new Jogadores(Nome,Regiao,Contato,Nif,Origem,Clube,Posicao,
                Altura,Peso,Salario,Jogos,Vitorias,Premio,Imagem,Salario_total);
                j.DadosJogadores();
                
        }
        
        
        
        
        
        
        }
        }while(JOptionPane.showConfirmDialog(null, 
            "Continuar?",
            "Repetir",
            JOptionPane.YES_NO_CANCEL_OPTION)==JOptionPane.YES_OPTION);
    
    


        }
}
