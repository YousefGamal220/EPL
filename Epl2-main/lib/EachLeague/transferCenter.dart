import 'package:arseli/TransferModel/TransferController.dart';
import 'package:arseli/TransferModel/TransferModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:get/get.dart';

class transferCenter extends StatefulWidget {
  String _leagueID;
  transferCenter(this._leagueID);
  @override
  _transferCenterState createState() => _transferCenterState(this._leagueID);
}

const TextStyle _textStyle = TextStyle(color: Colors.black54, fontSize: 13);

class _transferCenterState extends State<transferCenter> {
  String _leagueID;
  _transferCenterState(this._leagueID);
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: ClampingScrollPhysics(),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text("أبرز التحويلات".tr),
          ),
        ),
        FutureBuilder<TransferModel>(
          future: transferController.getTransfers(_leagueID),

          /// La Liga untill now
          builder: (context, snapshot) => !snapshot.hasData
              ? Container()
              : ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/players');
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 65,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                        child:
                                            Image.asset("assets/Marcelo.jpg")),
                                  ),
                                ),
                                Text("${snapshot.data.docs[index].matchName}"),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                        child: Text(
                                            "${snapshot.data.docs[index].membership[0].contestantName}")),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.24,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 1),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                    "assets/541.jpg"),
                                              ),
                                              Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  100))),
                                                  child: Icon(
                                                    Icons.arrow_back,
                                                    size: 15,
                                                    color: Colors.white,
                                                  )),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                    "assets/530.jpg"),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        child: Text(
                                            "${snapshot.data.docs[index].membership[0].transfer.fromContestantName}")),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  " ${snapshot.data.docs[index].membership[0].transfer.type == 'Transfer' ? 'انتقال' : snapshot.data.docs[index].membership[0].transfer.type == 'Loan' ? 'إعارة' : 'عائد من إعارة'} ",
                                  style: _textStyle,
                                ),
                                Text(
                                  "العقد حتي ${snapshot.data.docs[index].membership[0].endDate}",
                                  style: _textStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
        )
      ],
    );
  }
}
