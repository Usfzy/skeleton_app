import 'package:flutter/material.dart';

import '../../config/locale.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            // Text(AppLocale.title.getString(context)),
            Text(context.tr(AppLocale.title)),
      ),
    );
  }
}
