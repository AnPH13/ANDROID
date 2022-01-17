import 'package:myoran/screen/login/login.dart';

class user {
  final int id;
  final String email;
  final String name;

  user(this.id, this.email, this.name);

  user.formJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        name = json['name'];
}
