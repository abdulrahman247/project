import 'package:GRSON/secondPages/customer_screens/Take%20Away/Widgets/CheckOutCard.dart';
import 'package:GRSON/secondPages/customer_screens/Take%20Away/Widgets/Item.dart';
import 'package:GRSON/secondPages/customer_screens/Take%20Away/Widgets/ItemDivider.dart';
import 'package:GRSON/secondPages/customer_screens/Take%20Away/Widgets/UpperPicture.dart';
import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';
// import 'Widgets/CheckOutCard.dart';
// import 'Widgets/Item.dart';
// import 'Widgets/ItemDivider.dart';
// import 'Widgets/UpperPicture.dart';

class TakeAwayPage extends StatefulWidget {
  @override
  _TakeAwayPage createState() => _TakeAwayPage();
}

class _TakeAwayPage extends State<TakeAwayPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ArgonColors.bgColorScreen,
        body: SingleChildScrollView(
          child: Stack(alignment: Alignment.center, children: <Widget>[
            Container(
                child: Column(
              children: [
                UpperPicture(),
                // end the picture
                SizedBox(height: size.height * 0.02), //space beetwen them
                // Items
                Container(
                  width: size.width * 0.92,
                  child: Card(
                      elevation: 3,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Item(),
                          ItemDivider(),
                          Item(),
                          ItemDivider(),
                          Item(),
                          ItemDivider(),
                          Item(),
                          ItemDivider(),
                          Item(),
                          ItemDivider(),
                          Item(),
                          ItemDivider(),
                          Item(),
                          ItemDivider(),
                          Item(),
                          ItemDivider(),
                          Item(),
                          ItemDivider(),
                          Item(),
                        ],
                      )),
                ),
                // end of items
                SizedBox(height: size.height * 0.01),
                buttom_box_for_CheckOut(size),
                SizedBox(height: size.height * 0.03),
              ],
            )),
            // back icon
            icon(context, size),
          ]),
        ));
  }

  Container buttom_box_for_CheckOut(Size size) {
    return Container(
      height: size.height * 0.09,
      width: size.width * 0.92,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(33)),
      child: Card(
        color: kPrimaryLightColor,
        elevation: 9,
        child: CheckOutCard(),
      ),
    );
  }

  Positioned icon(BuildContext context, Size size) {
    return Positioned(
      top: 0,
      left: 0,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          size: 55,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/home");
        },
      ),
      width: size.width * 0.25,
      height: size.width * 0.40,
    );
  }
}
