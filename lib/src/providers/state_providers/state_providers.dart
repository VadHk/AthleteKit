import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateProviders {
  late StateProvider<int> counterProvider;

  static final StateProviders _stateProviders = StateProviders._internal();
  factory StateProviders() => _stateProviders;

  StateProviders._internal() {
    counterProvider = StateProvider<int>((ref) => 0);
  }
}
