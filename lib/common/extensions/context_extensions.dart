import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';
import '../constants/constants.dart';

extension AdaptiveExtension on BuildContext {
  bool get isMobile =>
      MediaQuery.sizeOf(this).shortestSide <=
      Constants.wideScreenBreakpointPixels;

  bool get isWide =>
      MediaQuery.sizeOf(this).shortestSide >
      Constants.wideScreenBreakpointPixels;
}

extension Localization on BuildContext {
  AppLocalizations get localizer => AppLocalizations.of(this);
}
