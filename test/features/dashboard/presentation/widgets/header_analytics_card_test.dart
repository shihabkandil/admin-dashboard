import 'package:admin_dashboard/features/dashboard/presentation/widgets/header_analytics_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    "Test header analytics card",
    (widgetTester) async {
      // Arrange
      String title = "Today's money";
      double percentage = 55;
      String value = "53,000";
      IconData icon = Icons.wallet;

      // Act
      await widgetTester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: HeaderAnalyticsCard(
              title: title,
              percentage: percentage,
              value: value,
              icon: icon,
            ),
          ),
        ),
      );

      // Assert
      expect(find.text(title), findsOneWidget);
      expect(find.text(value), findsOneWidget);
      expect(find.text("+$percentage%"), findsOneWidget);
      expect(find.byIcon(icon), findsOneWidget);
    },
  );
}
