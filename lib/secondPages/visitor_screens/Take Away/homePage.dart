import 'package:GRSON/secondPages/customer_screens/restaurant.dart';
import 'package:flutter/material.dart';

class VHomeTakeAwayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14.0, right: 14.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //item 1
            RestaurantItem(page: 'Take Away page user side'),
            //item 2
            RestaurantItem(page: 'Take Away page user side'),
          ],
        ),
      ),
    );
  }
}
