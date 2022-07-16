import 'package:flutter/material.dart';
import 'package:restaurant_app/modules/dashboard/restaurant_search/view/restaurants_view.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('listado de restaurantes'),
        ),
        body: RestaurantView());
  }
}
