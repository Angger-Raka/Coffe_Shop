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
          Sizebutton(
            text: "S",
            isSelected: true,
            onPressed: () {},
          ),
          Sizebutton(
            text: "M",
            isSelected: false,
            onPressed: () {},
          ),
          Sizebutton(
            text: "L",
            isSelected: false,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class Sizebutton extends StatelessWidget {
  const Sizebutton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isSelected = false,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width / 3) - 25,
      height: MediaQuery.of(context).size.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: isSelected ? Color(0xffFFF5EE) : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isSelected ? primaryColorButton : secondaryColorText,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color:
                isSelected ? primaryColorButton : Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
