import 'package:athletekit/data/models/auth.dart';
import 'package:athletekit/utils/tools.dart';

class User {
  late String? _id;
  late String? email;
  late String? firstName;
  late String? lastName;
  late DateTime? birthday;
  late double? weight;
  late double? height;
  late Auth? auth;

  User({
    this.email,
    this.firstName,
    this.lastName,
    this.birthday,
    this.weight,
    this.height,
    this.auth,
  });

  String? get id => _id;
  String get fullName => '$firstName $lastName';
  int get age => Tools.ageCalculate(birthday!);

  set setId(String id) {
    _id = id;
  }

  User.fromJson(Map<String, dynamic> json)
      : _id = json['id'] as String,
        email = json['email'] as String,
        firstName = json['firstName'] as String,
        lastName = json['lastName'] as String,
        birthday = json['birthday'] as DateTime,
        weight = json['weight'] as double,
        height = json['height'] as double,
        auth = Auth(
          uid: json['id'] as String,
          token: json['token'] as String,
        );

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'bornDate': birthday,
        'weight': weight,
        'height': height,
        'auth': auth!.toJson(),
      };

  @override
  String toString() =>
      'User{id: $id, email: $email, firstName: $firstName, lastName: $lastName, birthday: $birthday, weight: $weight, height: $height, auth{${auth.toString()}}}';
}
