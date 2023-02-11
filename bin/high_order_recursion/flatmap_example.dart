///flatMap is a combination of map and flatten. Before jumping into the definition 
///let's understand what flatten means.

///Flatten returns a new collection by taking every element in the collection,
/// and its subcollection and putting everything into a new collection
/// with a single depth.
///For instance, [1, 2, [3, 4], 5, [6, 7, [8, 9]]] will convert to 
///[1, 2, 3, 4, 5, 6, 7, 8, 9] . It is flattening the collection.


final arr = [1,2,[3,4],5,[6,7,8]];

const _arr2 = [1,2,3,4,5,6,7,8,9,10,11,12,13];

void main() {
  final _result = arr.expand((element){
    if(element is List<int>) return element;
    if(element is int) return [element];
    return [];
  });
  print(_result);
  
  final _reducedResult = _arr2.reduce((value, element) => value+element);
  print(_reducedResult); //91

  //fold method -using fold we can give a initial value 
  final _foldResult = _arr2.fold<int>(0, (previousValue, element) => previousValue + element);
  print(_foldResult); //91
}