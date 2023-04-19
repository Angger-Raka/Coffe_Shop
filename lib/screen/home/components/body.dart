import 'package:flutter/material.dart';

import 'profile.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Profile(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 900,
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
