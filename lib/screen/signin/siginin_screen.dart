import 'package:flutter/material.dart';

import 'components/Body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String routeNamed = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
