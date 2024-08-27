import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'common/constants/theme/app_theme_data.dart';
import 'common/core/injector/locator.dart';
import 'common/core/router/app_router.dart';
import 'l10n/generated/app_localizations.dart';

void commonMain() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(
    App(appRouter: AppRouter()),
  );
}

class App extends StatelessWidget {
  const App({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemeData.lightTheme,
      routerConfig: appRouter.config(),
      supportedLocales: const [Locale('en')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}
