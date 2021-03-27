
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QueueItem  extends StatefulWidget {
   @override
  _QueueItem createState() => _QueueItem();
}

class _QueueItem extends State<QueueItem> {
  String valueChoose, valueChoose2;
  List listItem = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "More then 10"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:
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
                                    Text("Line-B",
                                  style: TextStyle(fontSize:22, ),
                                    ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 16, right: 16),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey, width: 1),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: DropdownButton(
                                            hint: Text("QN"),
                                            dropdownColor: Colors.white,
                                            icon: Icon(Icons.arrow_drop_down),
                                            iconSize: 30,
                                            //  isExpanded: true,
                                            underline: SizedBox(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            value: valueChoose,
                                            onChanged: (newValue) {
                                              setState(() {
                                                valueChoose = newValue;
                                              });
                                            },
                                            items: listItem.map((valueItem) {
                                              return DropdownMenuItem(
                                                value: valueItem,
                                                child: Text(valueItem),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                          child: Text("Queue up".toUpperCase(),
                                              style: TextStyle(fontSize:15)),
                                          style: ButtonStyle(
                                              padding: MaterialStateProperty
                                                  .all<EdgeInsets>(
                                                      EdgeInsets.all(15)),
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ))),
                                          onPressed: () => null),
                                    ],
                                  ))));
  }
}