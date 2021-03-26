import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';

class QueuePage extends StatefulWidget {
  @override
  _QueuePage createState() => _QueuePage();
}

class _QueuePage extends State<QueuePage> {
 String valueChoose,valueChoose2;
  List listItem=["1", "2" , "3" , "4","5" , "6","7" , "8" ,"9" , "More then 10"  
  ];
  
  
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
                                      Text("Line-A"),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          padding: EdgeInsets.only(left:16,right:16 ),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey, width:1),
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: DropdownButton(
                                            hint: Text("Line num"),
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
                                            onChanged: (newValue){
                                              setState(() {
                                                valueChoose= newValue;
                                              });
                                            },
                                            items: listItem.map((valueItem){
                                              return DropdownMenuItem(
                                                value: valueItem,
                                                child: Text(valueItem),
                                              );

                                            } ).toList(),
                                              ),
                                        ),
                                      ),
                                      TextButton(
                                          child: Text("Queue up".toUpperCase(),
                                              style: TextStyle(fontSize: 14)),
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
                                      Text("Line-B"),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          padding: EdgeInsets.only(left:16,right:16 ),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey, width:1),
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: DropdownButton(
                                            hint: Text("Line num"),
                                             dropdownColor: Colors.white,
                                            icon: Icon(Icons.arrow_drop_down),
                                             iconSize: 30,
                                            //  isExpanded: true,
                                            underline: SizedBox(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            value: valueChoose2,
                                            onChanged: (newValue){
                                              setState(() {
                                                valueChoose2= newValue;
                                              });
                                            },
                                            items: listItem.map((valueItem){
                                              return DropdownMenuItem(
                                                value: valueItem,
                                                child: Text(valueItem),
                                              );

                                            } ).toList(),
                                              ),
                                        ),
                                      ),
                                      TextButton(
                                          child: Text("Queue up".toUpperCase(),
                                              style: TextStyle(fontSize: 14)),
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
                                  ))),
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
