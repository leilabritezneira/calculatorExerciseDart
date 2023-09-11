final add = (int a, int b) => a + b; 
final increment = (int n) => n+1;

void ecrire(int Function(int, int) fn){
  final result = fn(15, 7);
  print(result); 
}

void afficher(int result){
  print(result);
}

void main(){
  //Les fonctions lambda 
  ecrire(add);
  ecrire((x, y) {
    return x-y;
  });

  afficher(add(15,7));
  afficher((x, y){ 
    return x-y; 
  }.call(15,7));

  //Progamatin fonctionnelle
  const nombres = <int>[1,2,3,4,5];

  final result = nombres.map((element) => increment(element)).toList();
  print(result);

  final result2 = nombres.map(increment).toList();
  print(result2);

  final int Function(int a, int b) addAndIncrement = (int a, int b) => increment(add(a,b));
  print(addAndIncrement(1,2));
  
}
