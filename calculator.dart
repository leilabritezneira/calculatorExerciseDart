class Calculette{
  final int nombre1;
  final int nombre2; 

  //First form to constructor
  Calculette(this.nombre1, this.nombre2);

  //Second form to constructor
  Calculette.toto({ 
    required this.nombre1,
    required this.nombre2,
});

//Third form to constructor
Calculette.tata(this.nombre1, this.nombre2); 

//Fourth form to constructor
Calculette.form(Calculette other) : nombre1 = other.nombre1, nombre2 = other.nombre2;

}

void main(){
  final c1 = Calculette(2, 3);
  final c2 = Calculette.toto(nombre1: 2, nombre2: 3);
  final c3 = Calculette.tata(2, 3);
}
