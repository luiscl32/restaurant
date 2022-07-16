import 'package:flutter/material.dart';

class RestaurantSearchBar extends StatelessWidget {
  const RestaurantSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'ingresa una ciudad', prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
