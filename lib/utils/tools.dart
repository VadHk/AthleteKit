import 'package:flutter/widgets.dart';

class Tools {
  static int ageCalculate(DateTime date) {
    final double years = DateTime.now().difference(date).inDays / 365;
    return years.floor();
  }

  static void navigate({
    required BuildContext context,
    required Route<Object?> route,
  }) =>
      Navigator.of(context).push(route);
}
