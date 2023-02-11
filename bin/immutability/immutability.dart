import 'package:meta/meta.dart';

void main() {
  final _user = User('inan', 30);
  print(_user); //User(name: inan, age: 30)
  final newUser = _user.copyWith(age: 22);
  print(newUser); //User(name: inan, age: 22)
}



@immutable
class User {
  final String name;
  final int age;

 const  User(this.name, this.age);

  User copyWith({
    String? name,
    int? age,
  }) {
    return User(
      name ?? this.name,
      age ?? this.age,
    );
  }
  

  @override
  String toString() => 'User(name: $name, age: $age)';
}

