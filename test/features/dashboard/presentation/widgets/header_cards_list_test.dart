import 'package:admin_dashboard/features/dashboard/presentation/widgets/header_analytics_card.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/header_cards_list.dart';
import 'package:admin_dashboard/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Show 4 dashboard header cards", (widgetTester) async {
    // Arrange
    await widgetTester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: HeaderCardsList(),
        ),
        supportedLocales: [Locale('en')],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      ),
    );

    await widgetTester.pumpAndSettle();

    expect(find.byType(HeaderAnalyticsCard), findsExactly(4));
  });
}
