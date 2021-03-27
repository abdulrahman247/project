import 'package:flutter/material.dart';
import '../restaurant.dart';

class HomeQueuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14.0, right: 14.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //item 1
            RestaurantItem(page: 'Queue page user side'),
            //item 2
            RestaurantItem(page: 'Queue page user side'),
          ],
        ),
      ),
    );
  }
}
