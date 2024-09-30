import 'package:admin_dashboard/features/dashboard/presentation/widgets/satisfaction_progress_indicator.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/satisfaction_rate_card.dart';
import 'package:admin_dashboard/l10n/generated/app_localizations_en.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../app_pumper.dart';

void main() {
  group(
    "Test satisfaction card",
    () {
      testWidgets('shows progress bar indicator', (widgetTester) async {
        await widgetTester.pumpWidget(
          const AppPumper(
            child: SatisfactionRateCard(),
          ),
        );

        expect(find.byType(SatisfactionProgressIndicator), findsOneWidget);
      });

      testWidgets('shows translated text', (widgetTester) async {
        await widgetTester.pumpWidget(
          const AppPumper(
            child: SatisfactionRateCard(),
          ),
        );

        expect(
          find.text(AppLocalizationsEn().satisfactionRate),
          findsOneWidget,
        );
        expect(find.text(AppLocalizationsEn().fromAllProjects), findsOneWidget);
        expect(find.text(AppLocalizationsEn().basedOnLikes), findsOneWidget);
      });
    },
  );
}
