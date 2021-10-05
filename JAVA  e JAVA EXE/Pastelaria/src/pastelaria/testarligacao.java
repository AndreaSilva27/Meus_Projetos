

package pastelaria;


public class testarligacao {

    
    public static void main(String[] args) {
     ligacaoMySql bd=new ligacaoMySql();
        bd.criarLigacaoMySql();
        System.out.println(bd.estadoLigacao());    
    }

}
