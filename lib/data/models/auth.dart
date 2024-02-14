class Auth {
  late String? uid;
  late String? token;

  Auth({
    this.uid,
    this.token,
  });

  Auth.fromJson(Map<String, dynamic> json)
      : uid = json['id'] as String,
        token = json['json'] as String;

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'token': token,
      };

  @override
  String toString() => 'Auth{uid: $uid, token: $token}';
}
