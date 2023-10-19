import 'package:flutter/material.dart';
import 'package:testa/main.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: Row(
        key: const Key("statistics"),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: const VerticalDivider(
              thickness: 0.5,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.shopping_cart,
                          size: 35, color: colorTheme),
                      Container(
                        padding: const EdgeInsets.only(left: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(height: 13.0),
                            Text(
                              'Tổng số đơn',
                              style: TextStyle(
                                  color: colorTheme,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              '10',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 76, 76, 80),
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: const VerticalDivider(
              thickness: 0.5,
              color: Color.fromARGB(255, 101, 101, 110),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.attach_money,
                          size: 35, color: colorTheme),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(height: 13.0),
                          Text(
                            'Tổng đã chi',
                            style: TextStyle(
                                color: colorTheme,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '100.000đ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 76, 76, 80)),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            // color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: const VerticalDivider(
              thickness: 0.5,
              color: Color.fromARGB(255, 101, 101, 110),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.monetization_on,
                          size: 35, color: colorTheme),
                      Container(
                        padding: const EdgeInsets.only(left: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(height: 15.0),
                            Text(
                              'Tiền tích lũy',
                              style: TextStyle(
                                  color: colorTheme,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              '50.000',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 76, 76, 80)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              // color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 3),
              child:
                  const VerticalDivider(thickness: 0.5, color: Colors.white)),
        ],
      ),
    );
  }
}
