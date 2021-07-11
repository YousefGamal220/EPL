import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:get/get.dart';

import '../trendingData.dart';

class VideoTeam extends StatefulWidget {
  @override
  _VideoTeamState createState() => _VideoTeamState();
}

class _VideoTeamState extends State<VideoTeam> {
  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10)),

        ListView.builder(

            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            itemCount: 8,
            itemBuilder: (BuildContext context, index) {
              return Column(children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/webView');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,

                    child: Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(

                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 5),

                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: <Widget>[
                                Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Container(
                                      height: 100,
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.6,
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.only(left: 15),
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Text("1-0 Phippe Coutiho 21"
                                                          .tr)
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      Text(
                                                        "streamable.com",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 13),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                              height: 100,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.338,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10))),
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        top: 40),
                                                    child: Container(
                                                        height: 25,
                                                        width: 25,
                                                        decoration: BoxDecoration(
                                                            color:
                                                            Colors.grey[700],
                                                            borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .circular(
                                                                    100))),
                                                        child: Icon(
                                                          Icons.play_arrow,
                                                          color: Colors.white,
                                                          size: 17,
                                                        )),
                                                  ),
                                                ],
                                              ))
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ]);
            }),        Padding(padding: EdgeInsets.all(10))

      ],
    );
  }}

