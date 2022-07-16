import 'package:flutter/material.dart';
import 'package:restaurant_app/widgets/widgets.dart';

class RestaurantList extends StatelessWidget {
  RestaurantList({Key? key}) : super(key: key);
  final List<int> listIds = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      controller: controller,
      itemCount: listIds.length,
      itemBuilder: (context, index) => RestaurantCard(
          name: 'Restaurante la hamburguesa $index',
          address: 'calle $index #13-1',
          rating: '9'),
    );
  }
}
