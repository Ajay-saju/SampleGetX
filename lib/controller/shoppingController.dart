import 'package:get/get.dart';
import 'package:sample_getx/models/product.dart';

class ShoppingController extends GetxController{
  var products = List<Product>.empty().obs;
  

  @override
  void onInit() { 
    
    super.onInit();
    fetchProducts();
  }
  fetchProducts()async{
    await Future.delayed(Duration (seconds: 1));
    var serverResponce = [
      Product(id: 02, price: 230, productName: 'mobile', productDescription: 'nokia'),
      Product(id: 03, price: 500, productName: 'laptop stand',productDescription: 'Chinees'),
      Product(id: 04, price: 200, productName: 'mac bok', productDescription: 'Apple'),
            Product(id: 05, price: 400, productName: 'I PHONE', productDescription: 'Apple')

    ];
    products.value = serverResponce;


  }
}