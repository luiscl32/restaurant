import 'package:flutter/material.dart';
import 'package:restaurant_app/theme/app_theme.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    required this.name,
    required this.address,
    required this.rating,
  }) : super(key: key);

  final String name;
  final String address;
  final String rating;

  @override
  Widget build(BuildContext context) {
    final TextTheme theme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
          onTap: () {
            //* todo
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.lunch_dining_rounded,
                color: AppTheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: theme.bodyText1!.copyWith(color: AppTheme.primary),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    address,
                    style: theme.bodyText2!.copyWith(color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'rating: $rating/10',
                    style: theme.bodyText1!.copyWith(color: AppTheme.primary),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          )),
    );
  }
}
