import 'package:GRSON/secondPages/customer_screens/Queue/widgets/queueitem.dart';
import 'package:GRSON/secondPages/customer_screens/Take%20Away/Widgets/ItemDivider.dart';
import 'package:GRSON/secondPages/customer_screens/Take%20Away/Widgets/UpperPicture.dart';
import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:flutter/material.dart';

class QueuePage extends StatefulWidget {
  @override
  _QueuePage createState() => _QueuePage();
}

class _QueuePage extends State<QueuePage> {
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
                SizedBox(height: size.height * 0.03), //space beetwen them
                Container(
                  width: size.width * 0.92,
                  child: Card(
                      elevation: 9,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Column(
                        children: [
                          QueueItem(),
                          ItemDivider(),
                          QueueItem(),
                          ItemDivider(),
                          QueueItem(),
                        ],
                      )),
                )
              ],
            )),
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
          ]),
        ));
  }
}
