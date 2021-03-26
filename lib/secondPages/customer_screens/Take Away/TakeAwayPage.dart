import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:flutter/material.dart';

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
                SizedBox(height: size.height * 0.03), //space beetwen them
                // Menu Container
                Container(
                  width: size.width * 0.92,
                  child: Card(
                      elevation: 9,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          InkWell(
                              child: Row(children: [
                            //picture only
                            Container(
                              height: 60,
                              width: 90,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  // fit: BoxFit.fitWidth,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                                ),
                              ),
                            ),
                            // SizedBox(height: size.height * 0.03),
                            // Name of item
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Cheese Burger",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "39 SAR",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                  child: Text("Order ".toUpperCase(),
                                      style: TextStyle(fontSize: 20)),
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ))),
                                  onPressed: () => null),
                            )
                          ])),
                          Divider(
                            height: 4,
                            thickness: 0,
                            color: ArgonColors.muted,
                          ),
                          //anothor item
                          InkWell(
                              child: Row(children: [
                            //picture only
                            Container(
                              height: 60,
                              width: 90,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  // fit: BoxFit.fitWidth,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                                ),
                              ),
                            ),
                            // SizedBox(height: size.height * 0.03),
                            // Name of item
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Cheese Burger",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "39 SAR",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                  child: Text("Order ".toUpperCase(),
                                      style: TextStyle(fontSize: 20)),
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        // side:
                                        //     BorderSide(color: Colors.black)
                                      ))),
                                  onPressed: () => null),
                            )
                          ])),
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
