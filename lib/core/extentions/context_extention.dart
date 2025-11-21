import 'package:flutter/material.dart';
import 'package:movie111/generated/l10n.dart';
// import 'package:news_app/l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  TextTheme getTextTheme() {
    return Theme.of(this).textTheme;
  }

  ColorScheme getColorScheme() {
    return Theme.of(this).colorScheme;
  }

  Size getScreenSize() {
    return MediaQuery.of(this).size;
  }

  ThemeData getThemeData() {
    return Theme.of(this);
  }

  S getLocalization() {
    return S.of(this);
  }
<<<<<<< HEAD

=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
  // AppLocalizations getLocalization(){
  //   return AppLocalizations.of(this)!;
  // }
}
