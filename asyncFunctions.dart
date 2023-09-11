/*
Future<void> tacheComplexe(){
  return Future.delayed(
    const Duration(seconds: 2),
    () => print("Tache finie !"),
    );
}

void main(){
  tacheComplexe();
  print("Lancement tache complexe");
}

//Console: 
//Lancement tache complexe
//Tache finie !
*/
/*
Future<void> tacheComplexe(){
  return Future.delayed(
    const Duration(seconds: 2),
    () => print("Tache finie !"),
    );
}

void main() async {
  print("DEBUT DU PROGRAMME");
  await tacheComplexe();
  print("FIN PROGRAMME");
}

//Console: 
//DEBUT DU PROGRAMME
//Tache finie !
//FIN PROGRAMME
*/

Future<void> tacheComplexe() async {
  await Future.delayed(const Duration(seconds: 2));
  print("Tache finie !");
}

Future<void> tacheComplexePF(){
  return Future.delayed(const Duration(seconds: 2), () => print("Tache(PF) finie !"));
}

Future <void> main() async {
  print("DEBUT DU PROGRAMME");
  await tacheComplexe();
  tacheComplexePF().then((_) => print("FIN PROGRAMME"));
}

//Console:
//DEBUT DU PROGRAMME
//Tache finie !
//Tache(PF) finie !
//FIN PROGRAMME
