import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';

extension AdaptiveExtension on BuildContext {
  bool get isMobile => MediaQuery.sizeOf(this).shortestSide <= 600;

  bool get isTablet => MediaQuery.sizeOf(this).shortestSide > 600;
}

extension Localization on BuildContext {
  AppLocalizations get localizer => AppLocalizations.of(this);
}
