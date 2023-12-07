import 'dart:convert';

import 'datamodel.dart';
import 'package:http/http.dart' as http;

class DataManager {
  List<Category>? _menu;
  List<ItemInCart> cart = [];

  fetchMenu() async {
    try {
      const url = "https://firtman.github.io/coffeemasters/api/menu.json";
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var body = response.body;
        var decodeData = jsonDecode(body) as List<dynamic>;
        _menu = [];
        for (var json in decodeData) {
          _menu!.add(Category.fromJson(json));
        }
      } else {
        throw Exception("Error loading the data");
      }
    } catch (e) {
      throw Exception("Error $e");
    }
  }

  Future<List<Category>> getMenu() async {
    if (_menu == null) {
      await fetchMenu();
    }
    return _menu!;
  }

  cartAdd(Product p) {
    bool found = false;
    for (var item in cart) {
      if (item.product.id == p.id) {
        item.quantity++;
        found = true;
      }
    }
    if (!found) {
      cart.add(ItemInCart(product: p, quantity: 1));
    }
  }

  cartDelete(Product p) {
    cart.removeWhere((element) => element.product.id == p.id);
  }

  cartClear() {
    cart.clear();
  }

  double cartTotal() {
    var sum = 0.0;
    for (var item in cart) {
      sum += item.quantity * item.product.price;
    }
    return sum;
  }
}
