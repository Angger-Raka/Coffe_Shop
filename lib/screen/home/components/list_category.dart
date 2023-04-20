import 'package:coffe_shope/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          width: 15,
        ),
        CategoryCard(
          title: 'Coppucino',
          onPressed: () {},
          isSelected: true,
        ),
        CategoryCard(
          title: 'Macchiato',
          onPressed: () {},
          isSelected: false,
        ),
        CategoryCard(
          title: 'Latte',
          onPressed: () {},
          isSelected: false,
        ),
        CategoryCard(
          title: 'Espresso',
          onPressed: () {},
          isSelected: false,
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.onPressed,
    required this.isSelected,
  });

  final String title;
  final VoidCallback onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              isSelected ? tertiaryColorText : Colors.white,
            ),
            //border
            side: MaterialStateProperty.all(
              BorderSide(
                width: 2,
                color: isSelected ? Colors.transparent : tertiaryColorText,
              ),
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        child: Text(
          title,
          style: isSelected
              ? tertiaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )
              : GoogleFonts.poppins(
                  color: tertiaryColorText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ),
    );
  }
}
