import 'package:admin_dashboard/common/helpers/format_helper.dart';
import 'package:test/test.dart';

void main() {
  test('Test formatting percentage based on sign', () {
    double positivePercent = 99;
    double neutralPercent = 0;
    double negativePercent = -50.6;

    // Assert
    expect(
      FormatHelper.formatPercentage(positivePercent),
      "+$positivePercent%",
    );

    expect(FormatHelper.formatPercentage(neutralPercent), "$neutralPercent%");

    expect(
      FormatHelper.formatPercentage(negativePercent),
      "-$negativePercent%",
    );
  });
}
