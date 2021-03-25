import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';

class QueuePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBody();
}

class _MyBody extends State<QueuePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Queue"),
          // transparent: true,
        ),
        body: SafeArea(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 24.0, right: 24.0, bottom: 32),
              child: Card(
                  elevation: 9,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    children: [
                     
                      Container(
                          color: kPrimaryLightColor,
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 8, bottom: 8),
                          child: InkWell(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              },
                              // needed
                              child: Row(
                                children: [
                                  Text("in-door 5"),
                                                                    Text("NO.Q"),


                                  TextButton(
                                      child: Text("Get in queue".toUpperCase(),
                                          style: TextStyle(fontSize: 14)),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all<
                                              EdgeInsets>(EdgeInsets.all(15)),
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
                                  
                                ],
                              ))),
                      Container(
                          color: Color.fromRGBO(244, 245, 247, 1),
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 8, bottom: 8),
                          child: InkWell(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              },
                              // needed
                              child: Row(
                                children: [
                                  Text("Outdoor 2"),
                                  Text("NO.Q"),
                                  TextButton(
                                      child: Text("Get in queue ".toUpperCase(),
                                          style: TextStyle(fontSize: 14)),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all<
                                              EdgeInsets>(EdgeInsets.all(15)),
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.green),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            // side:
                                            //     BorderSide(color: Colors.green)
                                          ))),
                                      onPressed: () => null),
                                  
                                ],
                              ))),
                    ],
                  )),
            ),
          ]),
        ));
  }
}
