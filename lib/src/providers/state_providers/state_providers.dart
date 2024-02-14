import 'package:athletekit/common/const.dart';
import 'package:athletekit/data/models/auth.dart';
import 'package:athletekit/data/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateProviders {
  late StateProvider<int> counterProvider;
  late StateProvider<User> userProvider;

  static final StateProviders _stateProviders = StateProviders._internal();
  factory StateProviders() => _stateProviders;

  StateProviders._internal() {
    counterProvider = StateProvider<int>((ref) => 0);
    userProvider = StateProvider<User>(
      (ref) => User(
        email: 'adolf@nazi.ss',
        firstName: 'Adolf',
        lastName: 'Hitler',
        birthday: DateTime(1889, 4, 20),
        weight: 75,
        height: 165,
        auth: Auth(
          uid: '1',
          token: uuid.v1(),
        ),
      )..setId = '1',
    );
  }
}
