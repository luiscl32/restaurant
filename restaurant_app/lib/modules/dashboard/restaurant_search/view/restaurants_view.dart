import 'package:flutter/material.dart';
import 'package:restaurant_app/modules/dashboard/restaurant_search/ui/restaurant_list.dart';
import 'package:restaurant_app/modules/dashboard/restaurant_search/ui/restaurante_search_bar.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RestaurantSearchBar(),
        const SizedBox(
          height: 16,
        ),
        Flexible(child: RestaurantList())
      ],
    );
  }
}
