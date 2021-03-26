import 'package:GRSON/secondPages/customer_screens/Take%20Away/ItemDivider.dart';
import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Item.dart';

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
                Container(
                  //picture only
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                    ),
                  ),
                ),
                // end the picture
                SizedBox(height: size.height * 0.01),

                SizedBox(height: size.height * 0.01), //space beetwen them
                // Items
                Container(
                  width: size.width * 0.92,
                  child: Card(
                      elevation: 9,
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
                        ],
                      )),
                ),
                // end of items
                Container(
                  height: size.height * 0.13,
                  width: size.width * 0.92,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(29)),
                  child: Card(
                    color: kPrimaryLightColor,
                    elevation: 9,
                  ),
                ),
              ],
            )),
            // back icon
            Positioned(
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
            ),
            // end of back icon
          ]),
        ));
  }
}
