import 'dart:convert';

import 'package:flutter/services.dart';

import '../../features/orders/domain/models/orders.dart';

class JsonService {
  const JsonService();

  Future<List<Order>> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/orders.json');
    final data = await json.decode(response);
    List<Order> orders = List<Order>.from(
      data.map((x) => Order.fromJson(x)),
    );
    return orders;
  }
}
