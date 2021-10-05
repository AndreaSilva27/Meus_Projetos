using System;
using System.Collections;
using System.Linq;
using System.Threading.Tasks;
/*using System.Windows.Forms;*/


class Carro
{
    private
    int id;
    string matricula;
    int ano;
    string marca;
    string modelo;
    int km;

    public int getId()
    {
        return id;
    }
    
    public string getMatricula()
    {
        return matricula;
    }
    
    public int getAno()
    {
        return this.ano;
    }
    
    public string getMarca()
    {
        return marca;
    }
    
    public string getModelo()
    {
        return modelo;
    }
   
    public int getKm()
    {
        return km;
    }
    public void setKm(int km) //a única coisa que vai mudar é o km
    {
        this.km = km;
    }
    
    public Carro(int id,string matricula, int ano,string marca,string modelo,int km)
    {
        this.id = id;
        this.matricula = matricula;
        this.ano = ano;
        this.marca = marca;
        this.modelo = modelo;
        this.km = km;
    }
    
    public void Atualiza_Km(int km_atual)
    {
        km = km_atual;
    }
    

}



namespace ConsoleApp2_Ficha2B2
{
    class Program
    {
        static void Main(string[] args)
        {
            
            Console.WriteLine("Meus carros");
            

          
            ArrayList minha_frota = new ArrayList();
            minha_frota.Add(new Carro(1,"11-AA-22", 2020,"Fiat", "500", 10000));
            minha_frota.Add(new Carro(2,"44-BB-55", 2021, "BMW", "X5", 8000));
            minha_frota.Add(new Carro(3,"88-JJ-99", 2019, "Audi", "A6", 15000));

            foreach (Carro name in minha_frota)
            {
                Console.WriteLine("\nCarro Nº:"+ name.getId());
                Console.WriteLine("Matricula: " + name.getMatricula());
                Console.WriteLine("Ano:" + name.getAno());
                Console.WriteLine("Marca:" + name.getMarca());
                Console.WriteLine("Modelo:" + name.getModelo());
                Console.WriteLine("Km:" + name.getKm());
                
            }

            Console.ReadLine();


        }
    }
}
