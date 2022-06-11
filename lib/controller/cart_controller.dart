import 'package:get/get.dart';
import 'package:sample_getx/models/product.dart';

class CartController extends GetxController {
  var cartItem = List<Product>.empty().obs;

  int get count => cartItem.length;
  double get totalPrice => cartItem.fold(0, (sum, item) => sum + item.price);
  
  addToCart(Product product) {
    cartItem.add(product);
  }
}
