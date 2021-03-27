import 'package:GRSON/secondPages/customer_screens/Queue/widgets/queueitem.dart';
import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';

class QueuePage extends StatefulWidget {
  @override
  _QueuePage createState() => _QueuePage();
}

class _QueuePage extends State<QueuePage> {
  String valueChoose, valueChoose2;
  List listItem = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "More then 10"];

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
                SizedBox(height: size.height * 0.03), //space beetwen them
                Container(
                  // Menu Container
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
