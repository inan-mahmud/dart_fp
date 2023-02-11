import 'package:fpdart/fpdart.dart';

///Breaking down a multi-argument function 
///into a series of single-argument functions is currying. 
///A curried function takes a single argument at a time
/// and returns a function that takes a single argument 
/// and so on until all the arguments are passed.


void main() {
  //Non curried
  print(greet('hello', 'bob'));

  // curried
  print(curriedGreet('Hello')('doe'));


  //curried using fpdart
  final _curriedGreet2 = curry2<String,String,String>(greet);
  print(_curriedGreet2('Hello')('rick'));
}

String greet(String salutation, String name) => '$salutation $name';

typedef StringCallback = String Function(String name);

StringCallback curriedGreet(String salutation) {
  return (String name) {
    return '$salutation $name';
  };
}