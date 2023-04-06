import 'package:get/get.dart';
import 'package:online_shop/model/products.dart';
class CartController extends GetxController{
  var cartItems = <Product>[].obs;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum+item.price);
  int get number => cartItems.length;
  void addToCart(Product product){
    cartItems.add(product);
  }
}