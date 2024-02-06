import 'package:athletekit/utils/tools.dart';

class User {
  late int? _id;
  late String? _token;
  final String email;
  final String firstName;
  final String lastName;
  final DateTime birthday;
  final double weight;
  final double height;

  User({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.birthday,
    required this.weight,
    required this.height,
  });

  int? get id => _id;
  String? get token => _token;
  String get fullName => '$firstName $lastName';
  int get age => Tools.ageCalculate(birthday);

  set setId(int id) {
    _id = id;
  }

  set setToken(String token) {
    _token = token;
  }

  User.fromJson(Map<String, dynamic> json)
      : _id = json['id'] as int,
        _token = json['json'] as String,
        email = json['email'] as String,
        firstName = json['firstName'] as String,
        lastName = json['lastName'] as String,
        birthday = json['birthday'] as DateTime,
        weight = json['weight'] as double,
        height = json['height'] as double;

  Map<String, dynamic> toJson() => {
        'id': id,
        'token': token,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'bornDate': birthday,
        'weight': weight,
        'height': height,
      };

  @override
  String toString() =>
      'User{id: $id, email: $email, firstName: $firstName, lastName: $lastName, birthday: $birthday, weight: $weight, height: $height}';
}
