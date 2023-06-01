import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

mixin AppLocale {
  static const String title = 'title';

  static const Map<String, dynamic> kEN = {title: 'Localization'};
  static const Map<String, dynamic> kKM = {title: 'ការធ្វើមូលដ្ឋានីយកម្ម'};
  static const Map<String, dynamic> kJA = {title: 'ローカリゼーション'};

  //  _localization.translate('en');
}

extension Locales on BuildContext {
  String tr(String value) => value.getString(this);
}
