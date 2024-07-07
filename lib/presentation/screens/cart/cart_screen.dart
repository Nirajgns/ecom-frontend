import 'package:ecom_app/core/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  static const routeName = 'cart';

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Product name"),
                    subtitle: Text("price * quantity =total"),
                    trailing: InputQty(
                      maxVal: 99,
                      minVal: 1,
                      initVal: 1,
                      onQtyChanged: (value) {},
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "5 Items",
                          style: TextStyles.body1
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Total:1985",
                          style: TextStyles.heading3,
                        )
                      ],
                    ),
                  ),
                  CupertinoButton(
                    child: Text("PlaceOrder"),
                    onPressed: () {},
                    color: AppColors.accent,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
