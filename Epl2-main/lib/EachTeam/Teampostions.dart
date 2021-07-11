import 'package:flutter/material.dart';
import 'package:get/get.dart';

class teamPosition extends StatefulWidget {
  @override
  _teamPositionState createState() => _teamPositionState();
}

var indexx = 2;

class _teamPositionState extends State<teamPosition> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 11.0),
                    width: 40,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Text("كل".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12.5)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    width: 60,
                    height: 27,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Text("الذهاب".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12.5)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    width: 60,
                    height: 27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.grey[300]),
                    ),
                    child: Center(
                      child: Text(
                        "الاياب".tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.5),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 133.0),
                    width: 60,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Text("تشكيل".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12.5)),
                    ),
                  ),
                ],
              ),
            ),


            Divider(height: 2.0),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 6)),
                  Text(
                    "#",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 35.0,
                  ),
                  Text(
                    "فريق".tr,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 97,
                  ),
                  Text(
                    "م".tr,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    "ف".tr,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 18.0,
                  ),
                  Text(
                    "ت".tr,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    "خ".tr,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "-/+",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "=",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                  Text(
                    "ن".tr,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            itemCount: 18,
            itemBuilder: (BuildContext context, index) {
              return Column(children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/eachTeam');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("1"),
                                Container(
                                  child: Container(
                                      width: 40,
                                      height: 30,
                                      child: Image.asset("assets/541.jpg")),
                                ),
                                Text("ريال مدريد".tr),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Text("23"),
                        Text("20"),
                        Text("2"),
                        Text("1"),
                        Text("8-56"),
                        Text("48"),
                        Text("62"),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 2.0,
                  color: Colors.grey,
                )
              ]);
            }),
      ],
    );
  }
}
