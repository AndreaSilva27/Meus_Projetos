

package javafinal2;


public class TestarLigacao {

    
    public static void main(String[] args) {
    ligacaoMySql bd=new ligacaoMySql();
     bd.criarLigacaoMySql();
     System.out.println(bd.estadoLigacao());      
    }

}
