import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:get/get.dart';

import '../trendingData.dart';

class tranferTeam extends StatefulWidget {
  @override
  _tranferTeamState createState() => _tranferTeamState();
}

class _tranferTeamState extends State<tranferTeam> {
   TextStyle _textStyle = TextStyle(color: Colors.black54, fontSize: 13);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: <Widget>[
              Text(
                "لاعبون داخلون".tr,
                style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.bold ),
              ),
            ],
          ),
        ),
        ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/players');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 65,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 5, right: 5),
                              child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/Marcelo.jpg")),
                            ),
                          ),
                          Text("مارسيلو".tr),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("من".tr,
                                style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.bold ),
                              ),
                              Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 1),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 30,
                                          height: 30,
                                          child:
                                          Image.asset("assets/530.jpg"),
                                        ),
                                      ],
                                    ),
                                  )),
                              Text("اتليتكو مدريد".tr),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "المبلغ 8.4 مليون عقد سبتمبر 2020 - يونيو 2024"
                                .tr,
                            style: _textStyle,
                          ),
                          Text(
                            "القيمة السوقية 27 مليون".tr,
                            style: _textStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: <Widget>[
              Text(
                "لاعبون خارجون".tr,
                style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.bold ),
              ),
            ],
          ),
        ),
        ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 8,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/players');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 65,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 5, right: 5),
                              child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/Marcelo.jpg")),
                            ),
                          ),
                          Text("مارسيلو".tr),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("إلى".tr,
                                style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.bold ),
                              ),
                              Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 1),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 30,
                                          height: 30,
                                          child:
                                          Image.asset("assets/530.jpg"),
                                        ),
                                      ],
                                    ),
                                  )),
                              Text("اتليتكو مدريد".tr),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "المبلغ 8.4 مليون عقد سبتمبر 2020 - يونيو 2024"
                                .tr,
                            style: _textStyle,
                          ),
                          Text(
                            "القيمة السوقية 27 مليون".tr,
                            style: _textStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: <Widget>[
              Text(
                "تمديد مدة العقد".tr,
                style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.bold ),
              ),
            ],
          ),
        ),
        ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/players');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 65,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 5, right: 5),
                              child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/Marcelo.jpg")),
                            ),
                          ),
                          Text("مارسيلو".tr),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 1),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: 30,
                                          height: 30,
                                          child:
                                          Image.asset("assets/541.jpg"),
                                        ),
                                      ],
                                    ),
                                  )),
                              Text("ريال مدريد".tr),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "المبلغ 8.4 مليون عقد سبتمبر 2020 - يونيو 2024"
                                .tr,
                            style: _textStyle,
                          ),
                          Text(
                            "القيمة السوقية 27 مليون".tr,
                            style: _textStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
        Padding(padding: EdgeInsets.all(50))

      ],
    );
  }}

