abstract class Tools {
  static int ageCalculate(DateTime date) {
    final double years = DateTime.now().difference(date).inDays / 365;
    return years.floor();
  }
}
