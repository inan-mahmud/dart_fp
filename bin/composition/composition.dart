import 'package:fpdart/fpdart.dart';

/// we define small general-purpose functions that can be combined 
/// to make complex functions. The output of one function becomes 
/// the input of another function, and so on. 
/// The input gets passed from function to function and 
/// finally returns the result. Hence, we can think of composition as a 
/// pipeline through which the data flows

Function compose(Function f, Function g) => (x) => f(g(x));

String toUpper(String value) => value.toUpperCase();
String exclaim(String value) => '$value!';

void main() {
  final _shout = compose(exclaim, toUpper);
  print(_shout('Ouch! that hurts')); // OUCH! THAT HURTS!

  //using fpdart
  final compose1 = Compose(toUpper, 'Ouch! that hurts').c1(exclaim);
  print(compose1()); //OUCH! THAT HURTS!
}