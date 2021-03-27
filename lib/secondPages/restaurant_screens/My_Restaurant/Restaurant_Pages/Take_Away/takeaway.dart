import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';

class HomeTake_AwayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBody();
}

class _MyBody extends State<HomeTake_AwayPage> {
  bool switchValueOne;
  bool switchValueTwo;
  void initState() {
    setState(() {
      switchValueOne = true;
      switchValueTwo = false;
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: ListView(children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: size.height * 0),
            Text("Turn Take Away on/off",
                style: TextStyle(color: ArgonColors.text, fontSize: 30)),
            Switch.adaptive(
              value: switchValueOne,
              onChanged: (bool newValue) =>
                  setState(() => switchValueOne = newValue),
              activeColor: ArgonColors.primary,
            ),
            SizedBox(height: size.height * 0),
          ],
        ),
        if (switchValueOne) buildPadding(context),
      ]),
    ));
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 30, left: 24.0, right: 24.0, bottom: 32),
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
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8),
                              child: Align(
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 36,
                              child: RaisedButton(
                                  textColor: ArgonColors.primary,
                                  color: ArgonColors.secondary,
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, 'Add item');
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
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
                                            "Add item +",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8),
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
                  padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'Edit item');
                      },
                      // needed
                      child: Row(
                        children: [
                          Expanded(child: Text("double burger ")),
                          // TextButton(
                          //     child: Text("Accepet ".toUpperCase(),
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
                          //           //     BorderSide(color: Colors.black)
                          //         ))),
                          //     onPressed: () => null),
                          Expanded(
                              child: TextButton(
                                  child: Text("Delete ".toUpperCase(),
                                      style: TextStyle(fontSize: 14)),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(15)),
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
                                  onPressed: () => null)),
                          // FlatButton(
                          //   onPressed: () {
                          //     // Respond to button press
                          //     Navigator.pushReplacementNamed(
                          //         context, '/home');
                          //   },
                          //   padding: const EdgeInsets.only(
                          //       left: 4.0, top: 8, bottom: 8),
                          //   child: Text("Accepet order"),
                          //   color: Colors.green,
                          // ),
                          // FlatButton(
                          //   onPressed: () {
                          //     // Respond to button press
                          //     Navigator.pushReplacementNamed(
                          //         context, '/home');
                          //   },
                          //   padding: const EdgeInsets.only(
                          //       left: 4.0, top: 8, bottom: 8),
                          //   child: Text("Decline order"),
                          //   color: ArgonColors.error,
                          // )
                        ],
                      ))),
              Container(
                  color: Color.fromRGBO(244, 245, 247, 1),
                  padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'Edit item');
                      },
                      // needed
                      child: Row(
                        children: [
                          Expanded(child: Text("cheese burger")),
                          // TextButton(
                          //     child: Text("Accepet ".toUpperCase(),
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
                                  child: Text("Delete ".toUpperCase(),
                                      style: TextStyle(fontSize: 14)),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(15)),
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
                                  onPressed: () => null)),

                          // FlatButton(
                          //   onPressed: () {
                          //     // Respond to button press
                          //     Navigator.pushReplacementNamed(
                          //         context, '/home');
                          //   },
                          //   padding: const EdgeInsets.only(
                          //       left: 4.0, top: 8, bottom: 8),
                          //   child: Text("Accepet order"),
                          //   color: Colors.green,
                          // ),
                          // FlatButton(
                          //   onPressed: () {
                          //     // Respond to button press
                          //     Navigator.pushReplacementNamed(
                          //         context, '/home');
                          //   },
                          //   padding: const EdgeInsets.only(
                          //       left: 4.0, top: 8, bottom: 8),
                          //   child: Text("Decline order"),
                          //   color: ArgonColors.error,
                          // )
                        ],
                      ))),
            ],
          )),
    );
  }
}
