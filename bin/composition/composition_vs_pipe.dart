void main() {
  final _compose = compose(doubler, increment);
  final _pipe = pipe(doubler, increment);

  print(_compose(10));
  print(_pipe(10));
}

int increment(int value) => value + 1;
int doubler(int value) => value * 2;


/// Order of composition is from right to left
Function compose(Function f, Function g) => (x) => f(g(x));

/// Order of composition is from left to right
Function pipe(Function f, Function g) => (x) => g(f(x));