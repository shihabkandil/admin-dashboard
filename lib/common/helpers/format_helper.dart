class FormatHelper {
  FormatHelper._();

  static String formatPercentage(double percentage) {
    if (percentage == 0) {
      return "$percentage%";
    }
    return percentage > 0 ? "+$percentage%" : "$percentage%";
  }
}
