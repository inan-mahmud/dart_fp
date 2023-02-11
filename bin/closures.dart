///Every function has a scope. So, when a function 
///is defined into another function, that inner
/// function remembers the scope of the outer function 
/// even if the outer function is executed and no longer available. 
/// This is known as Closure.


typedef IntCallback = int Function(int number);
void main() {
  final _firstFnResult = _firstFunction();
  _firstFnResult();

  final _increment = add(1);
  print(_increment(2)); //3
}

Function _firstFunction() {
  final _someValue = 'First function scope';

  void _secondFunction() {
   print(_someValue); 
  }
  
  return _secondFunction;
}

IntCallback add(int a) {
  return (int b) {
    return a + b;
  };
}