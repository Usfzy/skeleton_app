import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExt on BuildContext {
  Future pushNamed(String route, {Object? arguments}) =>
      Navigator.of(this).pushNamed(route, arguments: arguments);

  Future pushReplacementNamed(String route,
          {Object? result, Object? arguments}) =>
      Navigator.of(this)
          .pushReplacementNamed(route, result: result, arguments: arguments);

  void pop([Object? arguments]) => Navigator.of(this).pop(arguments);

  AppLocalizations get localizations => AppLocalizations.of(this)!;
}
