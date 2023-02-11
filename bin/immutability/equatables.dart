// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';

@immutable
class User2 {
  final String name;
  final int age;

  const User2({required this.name, required this.age});

  

  @override
  bool operator ==(covariant User2 other) {
    if (identical(this, other)) return true;
  
    return other.runtimeType == User2 &&
      other.name == name &&
      other.age == age;
  }


  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

void main() {
  final user1 = User2(name: "John", age: 12);
  final user2 = User2(name: 'John', age: 12);

  print(user1 == user2);
}
