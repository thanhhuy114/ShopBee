import 'package:flutter/material.dart';

import 'listColor.dart';

class Task1Widget extends StatelessWidget {
  const Task1Widget({super.key, required this.rowx, required this.columnx});

  final int rowx;
  final int columnx;

  @override
  Widget build(BuildContext context) {
    // double screenWidth = ScreenUtil().screenWidth;
    // double screenHeight = ScreenUtil().screenHeight;
    double screenWidth = MediaQuery.of(context).size.width;
    int index = -1;

    if (columnx < 0 || columnx > 10) {
      return const Text("Lỗi Column không phù hợp!");
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.up,
        children: List.generate(rowx, (rowIndex) {
          return Row(
            children: List.generate(columnx, (columnIndex) {
              return Container(
                // width: 10,
                width: screenWidth / (columnx) - 5.2,
                height: (screenWidth / (columnx) - 5.2) * 1.5,
                color: listLC[++index],
                margin: const EdgeInsets.only(left: 5, bottom: 10),
              );
            }),
          );
        }),
      );
    }
  }
}
