import 'package:firebase_database/firebase_database.dart';


class User {
  String key;
  String name;
  String username;
  String password;
  double totalAmount;
  String email;


  User(this.name, this.username, this.password, this.totalAmount, this.email);

  User.fromSnapshot(DataSnapshot snapshot) :
    key = snapshot.key,
    name = snapshot.value["name"],
    username = snapshot.value["username"],
    password = snapshot.value["password"],
    totalAmount = snapshot.value["totalAmount"],
    email = snapshot.value["email"];

  toJson() {
    return {
      "name": name,
      "username": username,
      "password": password,
      "totalAmount":totalAmount,
      "email":email
    };
  }
}
