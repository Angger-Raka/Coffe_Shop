import 'package:flutter/material.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeNamed = "/splash";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
