import 'package:flutter/material.dart';
import 'package:skeleton_app/config/routes_generator.dart';
import 'package:skeleton_app/core/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            // Text(AppLocale.title.getString(context)),
            InkWell(
                onTap: () {
                  context.pushNamed(RouteGenerator.kHomeScreen);
                },
                child: Text('context.localizations.appTitle')),
      ),
    );
  }
}
