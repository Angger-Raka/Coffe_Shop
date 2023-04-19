import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpAddress extends StatelessWidget {
  const SignUpAddress({super.key});

  static String routeNamed = '/sign_up_address';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
