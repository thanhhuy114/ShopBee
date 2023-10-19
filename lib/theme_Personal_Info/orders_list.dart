import 'package:flutter/material.dart';
import 'package:testa/main.dart';

import 'order.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
      child: Column(children: <Widget>[
        // Row(
        //   children: const [
        //     Expanded(
        //       child: Text(
        //         "Thông tin đơn hàng",
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //             fontSize: 15,
        //             color: Color.fromARGB(255, 76, 76, 80),
        //             fontWeight: FontWeight.bold),
        //       ),
        //     )
        //   ],
        // ),
        Container(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0),
                  bottom: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0))),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text("Tất cả"),
              Text("Chờ giao"),
              Text(
                "Hoàn thành",
                style: TextStyle(color: colorTheme),
              ),
              Text("Đã hủy"),
            ],
          ),
        ),
        const OrderListWidget()
      ]),
    );
  }
}

class OrderListWidget extends StatefulWidget {
  const OrderListWidget({super.key});

  @override
  State<OrderListWidget> createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends State<OrderListWidget> {
  List<ProductWidget> items = List.filled(
    15,
    const ProductWidget(),
  );
  final controller = ScrollController();
  @override
  void initState() {
    super.initState();
    // controller.addListener(() {
    //   if (controller.position.maxScrollExtent == controller.offset) {
    //     fetch();
    //   }
    // });
  }

  // Future fetch() async {
  //   setState(() {
  //     items.addAll(['Item A', 'Item B', 'Item C', 'Item D']);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.white,
      child: ListView.builder(
          controller: controller,
          itemCount: items.length + 1,
          itemBuilder: (context, index) {
            if (index < items.length) {
              final item = items[index];
              return Container(
                padding: const EdgeInsets.only(top: 10),
                child: item,
              );
            } else {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.amber,
                    backgroundColor: Colors.amber,
                  ),
                ),
              );
            }
          }),
    );
  }
}
