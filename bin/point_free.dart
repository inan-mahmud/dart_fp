///We can think of points like the arguments passed into a function.
/// Point-free style defines a function without needing to pass 
/// in the arguments explicitly.

int increment(int number) => number + 1;
const _numbers  = [1,2,3,4,5];

void main(List<String> args) {
  // Not point free
  final _result = _numbers.map((e) => increment(e)).toList();
  print(_result); //[2, 3, 4, 5, 6]


  //point free
  final _result2 = _numbers.map(increment).toList();
  print(_result2); //[2, 3, 4, 5, 6]
}