import 'package:coffe_shope/theme.dart';
import 'package:flutter/material.dart';

class ListSize extends StatelessWidget {
  const ListSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // scrollDirection: Axis.horizontal,
        children: [
          Sizebutton(),
          Sizebutton(),
          Sizebutton(),
        ],
      ),
    );
  }
}

class Sizebutton extends StatelessWidget {
  const Sizebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 3) - 25,
      height: MediaQuery.of(context).size.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: primaryColorButton,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          "L",
          style: TextStyle(
            color: primaryColorButton,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
