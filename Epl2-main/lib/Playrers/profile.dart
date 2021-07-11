import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

const TextStyle _textStyle = TextStyle(color: Colors.grey, fontSize: 13);

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 45, right: 45, top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("سم 198".tr),
                              Text(
                                "الطول".tr,
                                style: _textStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("سنة22".tr),
                              Text(
                                "1997/10/10",
                                style: _textStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 25,
                                width: 25,
                                child: Image.asset("assets/541.jpg"),
                              ),
                              Text(
                                "الدوله".tr,
                                style: _textStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 70, right: 45, top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("-"),
                              Text(
                                "قميص".tr,
                                style: _textStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("الف840".tr),
                              Text(
                                "القيمة السوقية".tr,
                                style: _textStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 25,
                            height: 25,
                            child: Image.asset("assets/541.jpg")),
                        SizedBox(
                          width: 10,
                        ),
                        Text("الدوري الاسباني".tr),
                        Text("2019/2020")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, right: 40, left: 40, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("9"),
                              Text(
                                "المباريات".tr,
                                style: _textStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("3"),
                              Text(
                                "اهداف".tr,
                                style: _textStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("4"),
                              Text(
                                "صناعه الاهداف".tr,
                                style: _textStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 21,
                                width: 38,
                                decoration: BoxDecoration(
                                    color: Colors.green[400],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                child: Center(
                                    child: Text(
                                  "7.29",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              Text(
                                "تقييم".tr,
                                style: _textStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text("المركز".tr),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "رئيسي".tr,
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 13),
                                ),
                                Text("مهاجم".tr),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "غير ذلك".tr,
                                  style: _textStyle,
                                ),
                                Text("جناح ايمن".tr),
                              ],
                            ),
                            Positioned(
                              top: 65,
                              right: 210,
                              child: Container(
                                height: 200,
                                width: 150,
                                color: Colors.grey[300],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
