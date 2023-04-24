import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailItemScreen extends StatelessWidget {
  const DetailItemScreen({super.key});

  static String routeNamed = '/detail_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
