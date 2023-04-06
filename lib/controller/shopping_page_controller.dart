import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop/model/products.dart';

class ShoppingController extends GetxController{
  var products =   <Product>[].obs;
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchResult();
  }
  
  void fetchResult() async {
    await Future.delayed(Duration(seconds: 2),);
    var serverResponse = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd'),
    ];
    products.value = serverResponse;
  }

}