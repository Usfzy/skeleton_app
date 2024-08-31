import 'package:flutter/material.dart';
import 'package:skeleton_app/config/routes_generator.dart';
import 'package:skeleton_app/core/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            context.pushNamed(RouteGenerator.kHomeScreen);
          },
          child: Text(context.localizations.appTitle),
        ),
      ),
    );
  }
}
