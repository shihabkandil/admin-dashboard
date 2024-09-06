import 'package:admin_dashboard/features/dashboard/presentation/widgets/welcome_card.dart';
import 'package:admin_dashboard/gen/assets.gen.dart';
import 'package:admin_dashboard/l10n/generated/app_localizations_en.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../app_pumper.dart';

void main() {
  group("Welcome card", () {
    testWidgets(
      "should show Welcome card with user name",
      (widgetTester) async {
        // Arrange
        String name = 'example';

        await widgetTester.pumpWidget(
          AppPumper(
            child: WelcomeCard(name: name),
          ),
        );

        expect(find.text(name), findsOneWidget);
      },
    );

    testWidgets(
      "should show greeting assets",
      (widgetTester) async {
        // Arrange
        String welcomeBack = AppLocalizationsEn().welcomeBack;
        String gladToSeeYou = AppLocalizationsEn().gladToSeeYou;
        final image = Assets.images.welcomeBackground.provider();

        await widgetTester.pumpWidget(
          const AppPumper(
            child: WelcomeCard(name: 'example'),
          ),
        );

        expect(find.text(welcomeBack), findsOneWidget);
        expect(find.text(gladToSeeYou), findsOneWidget);
        expect(find.image(image), findsOneWidget);
      },
    );
  });
}
