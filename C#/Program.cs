using System;
using System.Collections;
using System.Reflection;


//Ficha 3 
// 2 -> é usado no método AnimalSound, que é usado nas 3 classes de maneiras diferentes
class Animal // Base class (parent)
{

    protected double peso;    // 3
    protected double altura;
    protected string nome;

    public void setPeso(double peso)  //8
    {
        this.peso = peso;
    }
    public double getPeso()
    {
        return peso;
    }
    public void setAltura(double altura)
    {
        this.altura = altura;
    }
    public double getAltura()
    {
        return altura;
    }

    public void setNome(string nome)
    {
        this.nome = nome;
    }

    public string getNome()
    {
        return nome;
    }
    public Animal(double peso,double altura)  //8
    {
        
        this.peso = peso;
        this.altura = altura;
    }

    public Animal(string nome)
    {
        this.nome = nome;
    }
    public Animal (string nome, double peso, double altura)
    {
        this.nome = nome;
        this.peso = peso;
        this.altura = altura;
    }
    public Animal()
    {
        nome = "";
        peso = 0;
        altura = 0;

    }
    public void AnimalSound()
    {
        Console.WriteLine("Todo animal emite um som!");
    }

    public void MostraAnimal()
    {
        Console.WriteLine("Nome do Animal: {0}", nome);
        Console.WriteLine("Peso: {0}", peso + " kg");
        Console.WriteLine("Altura: {0}", altura + " m");
    }
}


class Pig : Animal // Derived class (child)
{
    public Pig(string nome,double peso,double altura) : base(nome,peso,altura)
    {
        
    }

    public Pig(string nome):base(nome)
    {
     
    }

    public Pig():base()
    {

    }
    public void AnimalSound()
    {
        Console.WriteLine("O porco faz oinc oinc!");
    }
}


class Dog : Animal // Derived class (child)
{
    public Dog(string nome,double peso, double altura) : base(nome,peso, altura)
    {

    }

    public Dog(string nome):base(nome)
    {

    }

    public Dog():base()
    {

    }
    public void AnimalSound()
    {
        Console.WriteLine("O cachorro faz au au!");
    }
}


class Furao : Animal    //4
{
    protected double comp;

    public Furao(string nome, double peso, double altura, double comp) : base(nome, peso, altura)  //5
    {
        this.comp = comp;
    }

    public Furao(string nome):base(nome)
    {

    }

    public Furao():base( )
    {

    }
    public void setComp(double comp)
    {
        this.comp = comp;
    }
    public double getComp(double comp)
    {
        return comp;
    }
    
    public void MostraComp()
    {
        Console.WriteLine("Comprimento: {0}", comp + " m");
    }
    public void AnimalSound()
    {
        Console.WriteLine("O furão faz fi fi!");
    }
}

interface IAnimal
{
    public void AnimalSound()
    {
        Console.WriteLine("Todo animal emite um som!");
    }
    public static void MostraAnimal(string nome, double peso, double altura)
    {
        Console.WriteLine("Nome do Animal: {0}", nome);
        Console.WriteLine("Peso: {0}", peso + " kg");
        Console.WriteLine("Altura: {0}", altura + " m");

    }

    
}

class IPig : IAnimal
{
    public void AnimalSound()
    {
        Console.WriteLine("O porco faz oinc oinc!");
    }
}
class IDog : IAnimal
{
    public void AnimalSound()
    {
        Console.WriteLine("O cachorro faz au au!");
    }
}

class IFurao : IAnimal

{
    private string comp;

    public void MostraComp()
    {
        Console.WriteLine("Comprimento: {0}", comp + " m");
    }
    public void AnimalSound()
    {
        Console.WriteLine("O furão faz fi fi!");
    }
}
class Program
    {
    

    /* public static void MostraAnimal(string nome,double peso,double altura)
{
Console.WriteLine("Nome do Animal: {0}",nome);
Console.WriteLine("Peso: {0}", peso + " kg");
Console.WriteLine("Altura: {0}", altura + " m");

}
public void MostraComp(double comp)
{
Console.WriteLine("Comprimento: {0}", comp + "m");
}*/

    static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

        Animal myAnimal = new Animal("Xuxu",12.5,1.2); // Create a Animal object
        Pig myPig = new Pig("Baconzito",58.9,0.7); // Create a Pig object
        Dog myDog = new Dog("Totó",12.5,0.6); // Create a Dog object
        Furao myFurao = new Furao("Jack",5.5, 0.2, 0.6); //6

        Animal myAnimal2 = new Animal();  //9
        myAnimal2.setNome("Carlota");
        myAnimal2.setPeso(32.8);
        myAnimal2.setAltura(0.85);

        Pig myPig2 = new Pig();
        myPig2.setNome("Costelinha");
        myPig2.setPeso(45.9);
        myPig2.setAltura(0.92);

        Dog myDog2 = new Dog();
        myDog2.setNome("Frufru");
        myDog2.setPeso(4.5);
        myDog2.setAltura(0.18);

        Furao myFurao2 = new Furao();
        myFurao2.setNome("Zeca");
        myFurao2.setPeso(2.2);
        myFurao2.setAltura(0.08);
        myFurao2.setComp(0.8);
        
        myAnimal.AnimalSound();
        myPig.AnimalSound();
        myDog.AnimalSound();
        myFurao.AnimalSound();

        
        Console.WriteLine("\nNome do Animal: " + myAnimal.getNome());
        Console.WriteLine("Peso: " + myAnimal.getPeso() + " kg");
        Console.WriteLine("Altura: " + myAnimal.getAltura() + " m");
        Console.WriteLine("\nNome do Animal: " +  myPig.getNome());
        Console.WriteLine("Peso: " +  myPig.getPeso() + " kg");
        Console.WriteLine("Altura: " +  myPig.getAltura() + " m");
        Console.WriteLine("\nNome do Animal: " + myDog.getNome());
        Console.WriteLine("Peso: " + myDog.getPeso() + " kg");
        Console.WriteLine("Altura: " + myDog.getAltura()+ " m");
        Console.WriteLine("\nNome do Animal: " + myFurao.getNome());
        Console.WriteLine("Peso: " + myFurao.getPeso()+ " kg");
        Console.WriteLine("Altura: " + myFurao.getAltura() + " m");
        myFurao.MostraComp(); 

        Console.WriteLine("\n");
        myAnimal.MostraAnimal();

        Console.WriteLine("\n");
        myPig.MostraAnimal();

        Console.WriteLine("\n");
        myDog.MostraAnimal();

        Console.WriteLine("\n");
        myFurao.MostraAnimal();
        myFurao.MostraComp();


        Console.WriteLine("\n");
        myAnimal2.MostraAnimal();

        Console.WriteLine("\n");
        myPig2.MostraAnimal();

        Console.WriteLine("\n");
        myDog2.MostraAnimal();

        Console.WriteLine("\n");
        myFurao2.MostraAnimal();
        myFurao2.MostraComp();

        ArrayList minha_quinta = new ArrayList();
        
        minha_quinta.Add(new Pig("Baconzito", 58.9, 0.7));
        minha_quinta.Add(new Pig("Costelinha", 45.9, 0.92));
        minha_quinta.Add(new Dog("Totó", 12.5, 0.6));
        minha_quinta.Add(new Dog("Frufru", 4.5, 0.18));
        minha_quinta.Add(new Furao("Jack", 5.5, 0.2, 0.6));
        minha_quinta.Add(new Furao("Zeca", 2.2, 0.08, 0.8));

        

        


        foreach (Animal name in minha_quinta)
        {
            Console.WriteLine("\n");
            name.MostraAnimal();
            Type type = myAnimal.GetType();

            

                Console.WriteLine(myAnimal.GetType()); 
        }  


        Console.ReadLine();
    }
    }

