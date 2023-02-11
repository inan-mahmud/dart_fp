void main() {
  final _finalList = [1,2,3];
  const _constList = [1,2,3];

  _finalList.add(4);
  print(_finalList);

  //_constList.add(4); Unhandled exception:
  //Unsupported operation: Cannot add to an unmodifiable list

  final _unmodifiableList = List<int>.unmodifiable(
    <int>[1,2,3],
  );

 // _unmodifiableList.add(5); Unhandled exception:
 //Unsupported operation: Cannot add to an unmodifiable list

 final _map = Map<String,int>.unmodifiable(
  <String,int>{'a': 1, 'b': 2, 'c':3},
 );
 // _map['d'] = 4; Unhandled exception:
 //Unsupported operation: Cannot add to an unmodifiable map

 

}