import 'package:flutter/material.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color:  Colors.white,
      child: Row(
        key: const Key("statistics"),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              // color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.attach_money,
                            size: 40, color: Colors.black),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Tổng đã chi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              '100.000.000đ',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: const VerticalDivider(
              thickness: 0.5, // Độ dày của đường gạch dọc
              color: Colors.black, // Màu sắc của đường gạch dọc
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.attach_money,
                            size: 40, color: Colors.black),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Tổng đã chi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              '100.000đ',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: const VerticalDivider(
              thickness: 0.5, // Độ dày của đường gạch dọc
              color: Colors.black, // Màu sắc của đường gạch dọc
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.attach_money,
                            size: 40, color: Colors.black),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Tổng đã chi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              '100.000đ',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
