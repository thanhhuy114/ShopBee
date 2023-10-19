import 'package:flutter/material.dart';
import 'package:testa/main.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});
  // final String? orderId = "aaaaaa";
  // final String? status = "aaaaaa";
  // final int totalItem = 3;
  // final int? totalPrice = 30000;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.black)),
      ),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Mã hóa đơn: ABDHADA311D"),
              Text(
                "Hoàn thành",
                style: TextStyle(color: colorTheme),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                        style: BorderStyle.solid)),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width - 142,
                padding: const EdgeInsets.only(left: 10, right: 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Tên sản phẩm: Tất dài",
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      Row(
                        children: const [Text("Ngay dat: 10/10/2023")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Màu sắc: trắng"),
                          Text("Số lượng: x1")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [Text("Giá tiền: 10,000đ")],
                      )
                    ]),
              )
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text("3 sản phẩm"), Text("Thành tiền: 30,000đ")],
          ),
        ),
        const Text(
          "Xem thêm",
          style: TextStyle(color: Colors.blue),
        )
      ]),
    );
  }
}
