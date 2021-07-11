import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class matchesForTeam extends StatefulWidget {
  @override
  _matchesForTeamState createState() => _matchesForTeamState();
}

class _matchesForTeamState extends State<matchesForTeam> {
  ScrollController con;
  double offest = 0.0;

  TextStyle head = TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  TextStyle content = TextStyle(fontSize: 13.5);
  TextStyle content2 = TextStyle(fontSize: 13.5, color: Colors.grey);
  TextStyle content3 = TextStyle(fontSize: 12);
  TextStyle content4 = TextStyle(fontSize: 12, color: Colors.grey[500]);
  TextStyle number = TextStyle(
    fontSize: 20,
  );

  @override
  void initState() {
    super.initState();
    con = ScrollController();

    con.addListener(() {
      if (con.offset == 100) {
        setState(() {
          con.animateTo(con.offset,
              duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
        });
      }
    });

    void dispos() {
      con.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Container(
              color: Colors.grey[200],
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "المباريات السابقة".tr,
                      style: head,
                    )
                  ],
                ),
              )),
          ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (BuildContext context, index) {
                return Column(children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/matchInfo_a');
                    },
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 20, left: 20, bottom: 10),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("الاتنين،23سبتمبر2019".tr,
                                    style: content2),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      "الدوري الاسباني".tr,
                                      style: content4,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40, right: 40),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "اتليتكو".tr,
                                  style: content,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset("assets/530.jpg"),
                                ),
                                Container(
                                    width: 65,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4))),
                                    child: Center(
                                        child: Text(
                                      "3 - 1",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ))),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset("assets/541.jpg"),
                                ),
                                Text(
                                  "ريال مدريد".tr,
                                  style: content,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.grey,
                  )
                ]);
              }),
          Container(
              color: Colors.grey[200],
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "المباريات المقبلة".tr,
                      style: head,
                    )
                  ],
                ),
              )),
          ListView.builder(
              controller: con,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 6,
              itemBuilder: (BuildContext context, index) {
                return Column(children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/matchInfo');
                    },
                    child: Container(
                      height: 85,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 20, bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "الاتنين،23سبتمبر2019".tr,
                                  style: content2,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 88, right: 88),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "اتليتكو".tr,
                                  style: content,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset("assets/530.jpg"),
                                ),
                                Text(
                                  "3:30 ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[700]),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset("assets/541.jpg"),
                                ),
                                Text(
                                  "ريال مدريد".tr,
                                  style: content,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.grey,
                  )
                ]);
              }),
        ]);
  }
}
