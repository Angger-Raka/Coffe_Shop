import 'package:coffe_shope/theme.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 340,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 240,
                decoration: const BoxDecoration(
                  color: Color(0xff313131),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.white,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 25),
            child: Column(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "location",
                            style: secondaryTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Bantul, Yogyakarta",
                            style: tertiaryTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(Icons.person),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 75, 75, 75),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                      ),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,
                          color: Colors.white.withOpacity(0.6)),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Promo.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 14),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Promo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
