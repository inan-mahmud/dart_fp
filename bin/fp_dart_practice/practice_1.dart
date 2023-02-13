import 'package:fpdart/fpdart.dart';

///[Option] 
const int? a = null;
final Option<int> b = none<int>();

void main() {
  int resultI = 0;
if (a != null) {
  resultI = a! * 2;
}

final resultF = b.getOrElse(() => 0) * 2;
}

/// Don't do that
double divideI(int x, int y) {
  if (y == 0){
    throw Exception('Cannot divide by zero');
  }
  return x / y;
}

/// Error handling using [Option]
Option<double> divideF(int x, int y) {
  if(y == 0){
    return none();
  }
  return some(x/y);
}

Either<String,double> divideFE(int x, int y) {
  if(y == 0) {
    return left('Cannot divide by zero');
  }

  return right(x/y);
}

/// You must run one [Future] after the other, no way around this...
Future<int> asyncI() {
  return Future.value(10).then((value) => value * 10);
}

/// No need of 'async', you decide when to run the [Future]
Task<int> asyncF() {
  return Task(() async => 10).map((a) => a * 10);
}

/// What error is that? What is [dynamic]?
Future<int> asyncIF() {
  return Future<int>.error('Some error!')
      .then((value) => value * 10)
      .catchError((dynamic error) => print(error));
}

/// Handles all the errors easily
TaskEither<String,int> asyncFF() {
  return TaskEither<String,int>(() async => left('some error'),).map((r) => r*10);
}

