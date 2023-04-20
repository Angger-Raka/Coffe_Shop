import 'package:flutter/material.dart';

import 'list_category.dart';
import 'list_item_grid.dart';
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
              child: Column(
                children: [
                  Flexible(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                        child: ListCategory(),
                      ),
                    ),
                  ),
                  Expanded(flex: 11, child: ListItemGrid()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
