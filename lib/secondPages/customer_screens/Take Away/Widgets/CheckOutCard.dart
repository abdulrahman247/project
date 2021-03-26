import 'package:flutter/material.dart';

class CheckOutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: EdgeInsets.only(
          right: 20,
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Shopping Cart',
                ),
              ))),
      Padding(
        padding: EdgeInsets.only(
          right: 20,
        ),
      ),
      Expanded(
          flex: 3,
          child: Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                ),
                onPressed: () {},
                child: Text(
                  'CHECK OUT',
                  style: TextStyle(fontSize: 25),
                ),
              ))),
      Padding(
          padding: EdgeInsets.only(
        right: 20,
      )),
    ]);
  }
}
