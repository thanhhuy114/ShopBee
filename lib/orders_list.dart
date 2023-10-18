import 'package:flutter/material.dart';
import 'package:testa/order.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(children: <Widget>[
        Row(
          children: const [
            Text(
              "Orders",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
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
              Text("Chờ giao"),
              Text(
                "Hoàn thành",
                style: TextStyle(color: Colors.orange),
              ),
              Text("Đã hủy"),
            ],
          ),
        ),
        MyWidget()
      ]),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Order> items = List.filled(
    15,
    Order(),
  );
  final controller = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
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
