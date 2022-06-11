import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:sample_getx/controller/cart_controller.dart';
import 'package:sample_getx/controller/shoppingController.dart';
import 'package:sample_getx/models/product.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoppingController = Get.put(ShoppingController());
    final cartController = Get.put(CartController());
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(builder: (controller) {
              return ListView.builder(
                  itemCount: shoppingController.products.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    ' ${controller.products[index].productName}',
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  const Spacer(),
                                  Text(controller.products[index].price
                                      .toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(controller
                                      .products[index].productDescription),
                                  const Spacer(),
                                  ElevatedButton(
                                      onPressed: () {
                                        cartController.addToCart(
                                            controller.products[index]);
                                      },
                                      child: const Text('add to cart'))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }),
          ),
          GetX<CartController>(
            builder: (controller) {
              return Text(
                'Total amount:${controller.totalPrice}  ',
                style: const TextStyle(fontSize: 20,color: Colors.red),
              );
            },
          ),
          GetX<CartController>(
            
            builder: (controller) {
              return Text(
                'Total cart items:${controller.count}',
                style: TextStyle(fontSize: 25,color: Colors.white),
              );
            },
          )
        ],
      )),
    );
  }
}
