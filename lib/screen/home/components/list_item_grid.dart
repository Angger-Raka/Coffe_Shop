import 'package:coffe_shope/screen/detail_item/detail_item_screen.dart';
import 'package:coffe_shope/theme.dart';
import 'package:flutter/material.dart';

class ListItemGrid extends StatelessWidget {
  const ListItemGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisExtent: 300,
          childAspectRatio: 0.7,
        ),
        children: [
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurStyle: BlurStyle.normal,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Item.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    IntrinsicWidth(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Coppucino',
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                          )),
                      Text('Rp. 20.000',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          )),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "Rp. 14.000",
                            style: TextStyle(
                              color: Color(0xff2F4B4E),
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, DetailItemScreen.routeNamed);
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    tertiaryColorText),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(0)),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Rp. 28.000",
                        style: TextStyle(
                          color: Color(0xff2F4B4E),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
