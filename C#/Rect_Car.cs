using System;
using System.Collections;


class Rectangle
{
    private
    double length;
    double width;
    string nome;

    
    public double getLength()
    {
        return this.length;
    }
     public double getWidth()
    {
        return this.width;
    }

    public string getNome()
    {
        return this.nome;
    }
    // member variables double length; double width;

    public void setLength(double length)
    {
        this.length = length;
    }

    public void setWidth(double width)
    {
        this.width = width;
    }
    public void setNome(string nome)
    {
        this.nome = nome;
    }
    public Rectangle()
    {
        length = 2.0;
        width = 1.0;

    }
    public Rectangle(double a, double b)
    {
        length = a;
        width = b;

    }
    public Rectangle(int x, int y)
    {
        length = x;
        width = y;

    }
    public Rectangle(string n, int a, int b) // outro construtor para o array list
    {
        nome= n;
        length = a;
        width = b;
        
    }

    public double GetArea()
    {
        return Math.Round(length * width, 2);
    }

    public double GetAreaDobrada()
    {
        return Math.Round(2 * (length * width), 2);
    }

    public double AumentaRet()
    {
        Console.WriteLine("Insira o valor da escala do retângulo:");
        int escala = Convert.ToInt32(Console.ReadLine());
        return Math.Round(escala * (length * width), 2);


    }
    public void Display()
    {
        Console.WriteLine("\nNome: {0}", nome);
        Console.WriteLine("Length: {0}", length); //atenção!!Quando usar vírgula
        Console.WriteLine("Width: {0}", width);   // tem que usar {0} 
        Console.WriteLine("Area: {0}", GetArea()); // senão o valor não vai pra consola
     //se usar "string" + var -->  não precisa usar {0}

    }

    public void Display(string nome)
    {
        Console.WriteLine("\nNome: {0}", nome);
    }

    

    public void DisplayDobrado()
    {
        Console.WriteLine("Length: {0}", length);
        Console.WriteLine("Width: {0}", width);
        Console.WriteLine("Area: {0}", GetAreaDobrada());

    }
    public void DisplayTamanho()
    {
        
        Console.WriteLine("Length: {0}", length);
        Console.WriteLine("Width: {0}", width);
        Console.WriteLine("Area: {0}", AumentaRet());

    }


}

class Carro
{
    private
    string matricula;
    int ano;
    string marca;
    string modelo;
    int km;

    public Carro(string matricula, int ano, string marca, string modelo,int km)
    {
        this.matricula = matricula;
        this.ano = ano;
        this.marca = marca;
        this.modelo = modelo;
        this.km = km;
    }
    public Carro()
    {
        matricula = "";
        ano = 0;
        marca = "";
        modelo = "";
        km = 0;

    }
    public void IdCarro(int id)
    {
        Console.WriteLine("\nCarro Nº: {0}", id);
    }

    public void Atualiza_Km(int km_atual)
    {
        km = km_atual;
    }
    public void DisplayCarro()
    {
        Console.WriteLine("Matricula: {0}", matricula);
        Console.WriteLine("Ano: {0}", ano);
        Console.WriteLine("Marca: {0}", marca);
        Console.WriteLine("Modelo: {0}", modelo);
        Console.WriteLine("Km: {0}", km);
        Console.WriteLine("\n");

    }

}





class Rect_Car
        {
            static void Main(string[] args)
            {

        /*    static void MyName(string nome)  fazendo uma função dentro do main
        {
            Console.WriteLine("Olá, meu nome é " + nome);
        }
                MyName("Andrea");  chamando  a função */  

                int age = 30; // criei a var pra testar: aqui não precisa {0} 
                Console.WriteLine("Hello World! " + age);
                
                Rectangle ret1 = new Rectangle();
                Rectangle ret2 = new Rectangle(6.2,8.2);
                Rectangle ret3 = new Rectangle(4,5);

                  ret1.Display("Retângulo 1");
                  ret1.Display();
                  ret1.GetArea();

                  ret2.Display("Retângulo 2");
                  ret2.Display();
                  ret2.GetArea();
                  ret2.DisplayDobrado();
                  ret2.DisplayTamanho();
                  
                  ret3.Display("Retângulo 3");
                  ret3.Display();
                  ret3.GetArea();

                 Carro meu_fiat = new Carro("11-AA-22",2020,"Fiat","500",10000);//Ficha 2 B 1 a b 
                 Carro meu_bmw = new Carro("44-BB-55",2021,"BMW","X5",8000);
                 Carro meu_audi = new Carro("88-JJ-99",2019,"Audi","A6",15000);

                 meu_fiat.IdCarro(1);
                 meu_fiat.Atualiza_Km(12000);
                 meu_fiat.DisplayCarro();

                 meu_bmw.IdCarro(2);
                 meu_bmw.Atualiza_Km(16000);
                 meu_bmw.DisplayCarro();

                 meu_audi.IdCarro(3);
                 meu_audi.Atualiza_Km(22000);
                 meu_audi.DisplayCarro();

        ArrayList minha_frota = new ArrayList();  //Ficha 2 B 1 c
        minha_frota.Add("Fiat");
        minha_frota.Add("BMW ");
        minha_frota.Add("Audi");
        /*  string[] minha_frota = { "Fiat", "BMW", "Audi" };  fazendo em uma linha de código */
        Console.WriteLine("\n");
        foreach (string i in minha_frota)
            Console.WriteLine(i);



        ArrayList geo1 = new ArrayList(); //Ficha 2 B 1,2
        geo1.Add(new Rectangle("r1", 6, 9));
        geo1.Add(new Rectangle("r2", 7, 13));
        geo1.Add(new Rectangle("r3", 15, 19));

        
       /*string[] geo1 = { "r1", "r2", "r3" }; //pode fazer assim tbm, mas é arry de strings somente,código mais curto*/ 
                      Console.WriteLine("\n");
                      foreach (Rectangle name in geo1)
                      name.Display();

        
        Console.ReadLine();


            }
        }
    

