import 'package:arseli/TeamTablesViewModels/SquadController.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:get/get.dart';

import '../trendingData.dart';

class teamTeam extends StatefulWidget {
  @override
  _teamTeamState createState() => _teamTeamState();
}

class _teamTeamState extends State<teamTeam> {
  TextStyle _textStyle = TextStyle(color: Colors.grey[500], fontSize: 13);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
               Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "مدرب".tr,
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
               GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                     context, '/players');
                    },
                     child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: <Widget>[

                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.all(

                                    Radius.circular(100)),
                                border: Border.all(
                                    width: 1, color: Colors.grey)),
                            child: ClipRRect(

                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset("assets/Marcelo.jpg"),

                            ),
                          ),
                          Container(
                              width: 80,
                              child: Container(
                                child: squadController.isLoading.value ? Container() : Column(

                                  children: <Widget>[

                                    Text(
                                      "${squadController.coachs[0].matchName}".tr,
                                      overflow: TextOverflow.visible,
                                    ),
                                    Text(
                                      "${squadController.coachs[0].nationality}".tr,
                                      style: _textStyle,
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
               ),

                 Divider(),

                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(
                     children: <Widget>[
                       Text(
                         "حارس".tr,
                         style: TextStyle(fontSize: 17),
                       ),
                     ],
                   ),
                 ),
    GestureDetector(
    onTap: () {
    Navigator.pushNamed(
    context, '/players');
    },
                child: Container(
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Column(
                           children: <Widget>[
                             GetBuilder<SquadController>(
                               builder: (squadController) => squadController.isLoading.value ? Container() : ListView.builder(
                                   physics: ClampingScrollPhysics(),
                                   shrinkWrap: true,
                                   scrollDirection: Axis.vertical,
                                   itemCount: 4,
                                   itemBuilder:
                                       (BuildContext context, index) {
                                     return Padding(
                                       padding: const EdgeInsets.all(10.0),
                                       child: Row(
                                         mainAxisAlignment:
                                         MainAxisAlignment.start,
                                         children: <Widget>[
                                           Container(
                                             width: 45,
                                             height: 45,
                                             decoration: BoxDecoration(
                                                 borderRadius:
                                                 BorderRadius.all(
                                                     Radius.circular(
                                                         100)),
                                                 border: Border.all(
                                                     width: 1,
                                                     color: Colors.grey)),
                                             child: ClipRRect(
                                               borderRadius:
                                               BorderRadius.all(
                                                 Radius.circular(100),
                                               ),
                                               child: Image.asset(
                                                   "assets/Marcelo.jpg"),
                                             ),
                                           ),
                                           Container(
                                               width: 80,
                                               child: Center(
                                                 child: Column(
                                                   children: <Widget>[
                                                     Text(
                                                       "${squadController.goalKeeper[index].matchName}".tr,
                                                       overflow: TextOverflow
                                                           .visible,
                                                     ),
                                                     Text(
                                                       "${squadController.goalKeeper[index].nationality}".tr,
                                                      style: _textStyle,
                                                     )

                                                   ],
                                                 ),
                                               ))
                                         ],
                                       ),
                                     );
                                   }),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
                   ),
              ]),

        Divider(),


        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text(
                "مدافع".tr,
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),

    GestureDetector(
    onTap: () {
    Navigator.pushNamed(
    context, '/players');
    },
      child:  Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    GetBuilder<SquadController>(
                      builder: (squadController) => squadController.isLoading.value ? Container(): ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 10,
                          itemBuilder:
                              (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(
                                                100)),
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.grey)),
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                      child: Image.asset(
                                          "assets/Marcelo.jpg"),
                                    ),
                                  ),
                                  Container(
                                      width: 80,
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              "${squadController.defence[index].matchName}".tr,
                                              overflow: TextOverflow
                                                  .visible,
                                            ),
                                            Text(
                                              "${squadController.defence[index].nationality}".tr,
                                              style: _textStyle,
                                            )

                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text(
                "لاعب وسط".tr,
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
    GestureDetector(
    onTap: () {
    Navigator.pushNamed(
    context, '/players');
    },
     child:   Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    GetBuilder<SquadController>(
                      builder:(squadController) => squadController.isLoading.value ? Container() : ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 7,
                          itemBuilder:
                              (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(
                                                100)),
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.grey)),
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                      child: Image.asset(
                                          "assets/Marcelo.jpg"),
                                    ),
                                  ),
                                  Container(
                                      width: 80,
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              "${squadController.midfielders[index].matchName}".tr,
                                              overflow: TextOverflow
                                                  .visible,
                                            ),
                                            Text(
                                              "${squadController.midfielders[index].nationality}".tr,
                                              style: _textStyle,
                                            )

                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text(
                "مهاجم".tr,
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
    GestureDetector(
    onTap: () {
    Navigator.pushNamed(
    context, '/players');
    },
       child: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    GetBuilder<SquadController>(
                      builder: (squadController) => squadController.isLoading.value ? Container() : ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 9,
                          itemBuilder:
                              (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(
                                                100)),
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.grey)),
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                      child: Image.asset(
                                          "assets/Marcelo.jpg"),
                                    ),
                                  ),
                                  Container(
                                      width: 80,
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              "${squadController.attack[index].matchName}".tr,
                                              overflow: TextOverflow
                                                  .visible,
                                            ),
                                            Text(
                                              "${squadController.attack[index].nationality}".tr,
                                              style: _textStyle,
                                            )

                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.all(20))

                  ],
                ),
              ),
            ],
          ),
        ),
    )],
    );
  }}

