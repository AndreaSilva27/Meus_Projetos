#include <iostream>
#include <string>

using namespace std;  //Ficha 9

   class Retangulo {
	private:  // estas são as propriedades antes eram públicas, agora são privadas
		double comp;
		double altura;
		
	public:
		Retangulo(){  //metodo construtor
			comp=3.0;
			altura=4.0;
		}
		
		void set_values(double c, double a){ //função tipo set
			comp=c;
			altura=a;
		}
		void display(string nome){  // função tipo get
		  cout << nome <<endl;	
		  cout << "Rect(comp x alt)= " << comp << "x" << altura<<endl;	
		}
	   	
	   	void display_Area(){
	   	  cout << "Area do Rect= " <<comp *altura<<endl;	
		   }
		
		void display_Perimetro(){
		   cout << "Perimetro do Rect= " << 2*comp+2*altura <<endl;
		}   
	    
		void draw(){
		  	int i,j;
		  	for(j=0;j<altura;j++){
		  		for(i=0;i<comp;i++) cout<<"*";
		  		cout<<endl;
			  }
			
		}	
		
};

   class Paralelepipedo {       //ficha 10
   	 private:
   	 	double comp;
   	 	double altura;
   	 	double prof;
   	 	int estado;
   	 	
   	 public:
		Paralelepipedo(){  // método construtor da classe(mesmo nome) dizendo que o estado inicial é vertical
			estado=1;
		} //assim não coloca o estado e no set values, somente c,a,p
		Paralelepipedo(double c, double a, double p){
			comp=c;
			altura=a;
			prof=p;
		}
		Paralelepipedo(double c, double a, double p,int e){
			comp=c;
			altura=a;
			prof=p;
			estado=e;
		}
/*		Paralelepipedo(){
			comp=10;
			altura=9;
			prof=8;
			estado=1;
			
		}
*/		
		void set_values(double c, double a, double p, int e){    // método set
			comp=c;
			altura=a;
			prof=p;
			estado=e;
			  
		}
		
		void display_p(string nome_p){        // método get
			cout<<nome_p<<endl;
			cout <<"Paralelepipedo = "<< comp << "x" << altura << "x" << prof <<endl;
			
		}
		
		void display_Volume(){
			cout<<"Volume =  "<< comp*altura*prof <<endl;
			if(estado==0){
			   cout<<"Estado = horizontal"<<endl;
			  
			  }
			  if(estado==1){
               cout<<"Estado = vertical"<<endl;
			  }
			
		}
		
		void rodar_solido(){
			if(estado==0){
				estado=1;
				cout<<"Estado = vertical"<<endl;
				
			}
			if(estado==1){
				estado=0;
				cout<<"Estado = horizontal"<<endl;
				
			}
		}	
   	
   };

int main(){
     
	 Retangulo Box1;
	 Retangulo Box2; 
	 double	area = 0.0;
	 
	 //Box1.altura=5.5;
	 Box1.set_values(5.5,6.0);
	 //Box1.comp=6.0;
	 
	 Paralelepipedo Para1;
	 Paralelepipedo Para2;
	 Paralelepipedo Para3;
	 Para1.set_values(8,4,6,0);
	 Para2.set_values(7,3,5,1);
	 Para3.set_values(10,8,7,0);
	 
	 
	 //cout << "Box1 (compxalt)  "<< Box1.comp<< "x" <<Box1.altura<<;
	 //cout << "area da Box1=  " <<Box1.comp *Box1.altura<<endl;
	 Box1.display("Box1");
	 Box1.display_Area();
	 Box1.display_Perimetro();
	 Box1.draw();
	 
	 Box2.display("\nBox2");
	 Box2.display_Area();
	 Box2.display_Perimetro();
	 Box2.draw();
	 
	 Para1.display_p("Para1");  // Professora, não entendo pq meu para1 volta a girar qdo é horizontal, no vertical isso já não acontece.  
	 Para1.display_Volume();    // mas preferi parar e estudar nos tutoriais do que ficar a mexer
	 Para1.rodar_solido();
	 
	 
	 
	 Para2.display_p("\nPara2");
	 Para2.display_Volume();
	 Para2.rodar_solido();
	 Para2.rodar_solido();
	 
	 Para3.display_p("\nPara3");
	 Para3.display_Volume();
	 Para3.rodar_solido();
	 
	 
	 return 0;
}
