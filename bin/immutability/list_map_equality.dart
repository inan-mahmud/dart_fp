import 'package:collection/collection.dart';

void main() {
  final _listOne = [1, 2, 3];
  final _listTwo = [1, 2, 3];

  print(_listOne == _listTwo); // false

  final _mapOne = {'name': 'John', 'age': 18};
  final _mapTwo = {'name': 'John', 'age': 18};

  print(_mapOne == _mapTwo); // false


  final _equality = DeepCollectionEquality();
  print(_equality.equals(_listOne, _listTwo)); // true
    print(_equality.equals(_mapOne, _mapTwo)); // true

  print([1,2,3,4] == [1,3,4,2]); // false
  print(DeepCollectionEquality.unordered().equals([1,2,3,4], [1,3,4,2])); // true
}
