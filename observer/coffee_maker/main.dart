import 'coffee_maker_observers.dart';
import 'coffee_maker_subject.dart';

main() async {
  final coffeeMaker = CoffeeMakerSubject(); //objeto a ser observado

  final me = Me(); //observador
  final myWife = MyWife(); //observador
  
  //adicionando observadores
  coffeeMaker.registerObserver(me); 
  coffeeMaker.registerObserver(myWife);

  //efetuando eventos 
  coffeeMaker.doing();

  //removendo observador
  coffeeMaker.unregisterObserver(myWife);

  await Future.delayed(Duration(seconds: 2));

  //Finalizando o processo
  coffeeMaker.done();

}
