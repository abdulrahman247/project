import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';

class HomeQueuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          color: ArgonColors.white,
                          border: Border(
                              bottom: BorderSide(
                            width: 0.5,
                            color: ArgonColors.muted,
                          ))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // Text(
                                //   "you can add queue for the customer depends on the place of the queu and the max number of customer in each table ",
                                //   style: TextStyle(
                                //     fontSize: 20,
                                //   ),
                                // ),
                                Container(
                                  // text
                                  width: 140,
                                  height: 36,
                                  child: RaisedButton(
                                      textColor: ArgonColors.primary,
                                      color: ArgonColors.secondary,
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, 'Queue add');
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 10,
                                              top: 10,
                                              left: 8,
                                              right: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Add queue +",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 8),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Container(
                      color: kPrimaryLightColor,
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, 'Queue edit');
                          },
                          // needed
                          child: Row(
                            children: [
                              Expanded(
                                child: Text("in-door 2 - 10 "),
                              ),
                              // TextButton(
                              //     child: Text("Accepet next".toUpperCase(),
                              //         style: TextStyle(fontSize: 14)),
                              //     style: ButtonStyle(
                              //         padding:
                              //             MaterialStateProperty.all<EdgeInsets>(
                              //                 EdgeInsets.all(15)),
                              //         foregroundColor:
                              //             MaterialStateProperty.all<Color>(
                              //                 Colors.green),
                              //         shape: MaterialStateProperty.all<
                              //                 RoundedRectangleBorder>(
                              //             RoundedRectangleBorder(
                              //           borderRadius:
                              //               BorderRadius.circular(18.0),
                              //           // side:
                              //           //     BorderSide(color: Colors.green)
                              //         ))),
                              //     onPressed: () => null),
                              Expanded(
                                child: TextButton(
                                    child: Text("Delete".toUpperCase(),
                                        style: TextStyle(fontSize: 14)),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(15)),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                ArgonColors.error),
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
                              // FlatButton(
                              //   onPressed: () {
                              //     // Respond to button press
                              //     Navigator.pushReplacementNamed(
                              //         context, '/home');
                              //   },
                              //   padding: const EdgeInsets.only(
                              //       left: 4.0, top: 8, bottom: 8),
                              //   child: Text("Accepet next"),
                              //   color: Colors.green,
                              // ),
                              // FlatButton(
                              //   onPressed: () {
                              //     Navigator.pushReplacementNamed(
                              //         context, '/home');
                              //   },
                              //   padding: const EdgeInsets.only(
                              //       left: 4.0, top: 8, bottom: 8),
                              //   child: Text("Delete"),
                              //   color: ArgonColors.error,
                              // )
                            ],
                          ))),
                  Container(
                      color: Color.fromRGBO(244, 245, 247, 1),
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, 'Queue edit');
                          },
                          // needed
                          child: Row(
                            children: [
                              Expanded(
                                child: Text("in-door 2 - 10 "),
                              ),
                              // TextButton(
                              //     child: Text("Accepet next".toUpperCase(),
                              //         style: TextStyle(fontSize: 14)),
                              //     style: ButtonStyle(
                              //         padding:
                              //             MaterialStateProperty.all<EdgeInsets>(
                              //                 EdgeInsets.all(15)),
                              //         foregroundColor:
                              //             MaterialStateProperty.all<Color>(
                              //                 Colors.green),
                              //         shape: MaterialStateProperty.all<
                              //                 RoundedRectangleBorder>(
                              //             RoundedRectangleBorder(
                              //           borderRadius:
                              //               BorderRadius.circular(18.0),
                              //           // side:
                              //           //     BorderSide(color: Colors.green)
                              //         ))),
                              //     onPressed: () => null),
                              Expanded(
                                child: TextButton(
                                    child: Text("Delete".toUpperCase(),
                                        style: TextStyle(fontSize: 14)),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(15)),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                ArgonColors.error),
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
                              // FlatButton(
                              //   onPressed: () {
                              //     // Respond to button press
                              //     Navigator.pushReplacementNamed(
                              //         context, '/home');
                              //   },
                              //   padding: const EdgeInsets.only(
                              //       left: 4.0, top: 8, bottom: 8),
                              //   child: Text("Accepet next"),
                              //   color: Colors.green,
                              // ),
                              // FlatButton(
                              //   onPressed: () {
                              //     Navigator.pushReplacementNamed(
                              //         context, '/home');
                              //   },
                              //   padding: const EdgeInsets.only(
                              //       left: 4.0, top: 8, bottom: 8),
                              //   child: Text("Delete"),
                              //   color: ArgonColors.error,
                              // )
                            ],
                          ))),
                  Container(
                      color: kPrimaryLightColor,
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, 'Queue edit');
                          },
                          child: Row(
                            children: [
                              Expanded(
                                child: Text("in-door 2 - 10 "),
                              ),
                              // TextButton(
                              //     child: Text("Accepet next".toUpperCase(),
                              //         style: TextStyle(fontSize: 14)),
                              //     style: ButtonStyle(
                              //         padding:
                              //             MaterialStateProperty.all<EdgeInsets>(
                              //                 EdgeInsets.all(15)),
                              //         foregroundColor:
                              //             MaterialStateProperty.all<Color>(
                              //                 Colors.green),
                              //         shape: MaterialStateProperty.all<
                              //                 RoundedRectangleBorder>(
                              //             RoundedRectangleBorder(
                              //           borderRadius:
                              //               BorderRadius.circular(18.0),
                              //           // side:
                              //           //     BorderSide(color: Colors.green)
                              //         ))),
                              //     onPressed: () => null),
                              Expanded(
                                child: TextButton(
                                    child: Text("Delete".toUpperCase(),
                                        style: TextStyle(fontSize: 14)),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(15)),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                ArgonColors.error),
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
                              // FlatButton(
                              //   onPressed: () {
                              //     // Respond to button press
                              //     Navigator.pushReplacementNamed(
                              //         context, '/home');
                              //   },
                              //   padding: const EdgeInsets.only(
                              //       left: 4.0, top: 8, bottom: 8),
                              //   child: Text("Accepet next"),
                              //   color: Colors.green,
                              // ),
                              // FlatButton(
                              //   onPressed: () {
                              //     Navigator.pushReplacementNamed(
                              //         context, '/home');
                              //   },
                              //   padding: const EdgeInsets.only(
                              //       left: 4.0, top: 8, bottom: 8),
                              //   child: Text("Delete"),
                              //   color: ArgonColors.error,
                              // )
                            ],
                          ))),
                ],
              )),
        ),
      ]),
    );
  }
}
