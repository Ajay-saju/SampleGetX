
import 'package:flutter/material.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:sample_getx/controller/shoppingController.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoppingController = Get.put(ShoppingController());
    return Scaffold(
      body: SafeArea(child: Column(children: [
      Expanded(
        child: ListView.builder(itemCount: 5, itemBuilder: (context,index){
          return Card(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:const [
                    Text('Product Name',style: TextStyle(fontSize: 20),),
                    Spacer(),
                    Text('Amount'),
                  ],
                  
                
                ),
                
              ),
              ],
              
            ),
          ),) ;
        }),
      )
      ],)),
    );
    
  }
}