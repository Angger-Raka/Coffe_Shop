import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Spacer(),
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateColor.resolveWith(
                                          (states) => Color(0xFFC67C4E)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  minimumSize:
                                      MaterialStatePropertyAll(Size(100, 50))),
                              onPressed: () {},
                              child: Text(
                                "Pickup",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shadowColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.transparent),
                                  backgroundColor:
                                      MaterialStateColor.resolveWith(
                                          (states) => Colors.grey),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  minimumSize:
                                      MaterialStatePropertyAll(Size(100, 50))),
                              onPressed: () {},
                              child: Text(
                                "Delivery",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Text("Delivery Address"),
        Text("Imogiri"),
        Text("Jl. Imogiri - Siluk"),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.edit_location_outlined),
            label: Text("Change Address")),
        Divider(
          thickness: 2,
        )
      ],
    );
  }
}
