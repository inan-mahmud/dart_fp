///sum in iterative way
int _iterativeSum(int number) {
  int _result = 0;

  for(int i = 0; i<= number; i++){
    _result += i;
  }
  return _result;
}

//sum in recursive way
int _recursiveSum(int number) {
  if (number == 0) return 0;

  return number + _recursiveSum(number - 1);
}

void main() {
  final _iterativeSumResult = _iterativeSum(5);
  print(_iterativeSumResult);

  final _recursiveSumResult = _recursiveSum(5);
  print(_recursiveSumResult);

  
}