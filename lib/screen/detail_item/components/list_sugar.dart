import 'package:coffe_shope/theme.dart';
import 'package:flutter/material.dart';

class ListSugar extends StatelessWidget {
  const ListSugar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SugarButton(
            text: "Normal",
            isSelected: true,
            onPressed: () {},
          ),
          SugarButton(
            text: "Less Sugar",
            isSelected: false,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class SugarButton extends StatelessWidget {
  const SugarButton({
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
    return Padding(
      padding: const EdgeInsets.only(right: 10),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              color: isSelected
                  ? primaryColorButton
                  : Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
