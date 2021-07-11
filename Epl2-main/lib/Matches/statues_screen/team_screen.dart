import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TeamScreen extends StatelessWidget {
  TextStyle content = TextStyle(fontSize: 13.5);
  TextStyle _textStyle2 = TextStyle(color: Colors.grey[500], fontSize: 15);
  TextStyle _textStyle3 =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20);
  TextStyle _textStyle4 =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15);

  TextStyle _textStyle1 = TextStyle(fontSize: 17);

  TextStyle content2 = TextStyle(fontSize: 13.5, color: Colors.grey);
  TextStyle content3 = TextStyle(fontSize: 12);
  TextStyle content4 = TextStyle(fontSize: 12, color: Colors.grey);
  TextStyle number = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("احصائيات الصدارة".tr, style: content),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 5, right: 15, left: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("السيطرة علي الكرة".tr, style: content),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 10),
          child: Stack(
            children: <Widget>[
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width * 0.9,
                percent: 0.6,
                progressColor: Colors.green[600],
                isRTL: true,
                lineHeight: 35,
                backgroundColor: Colors.grey[600],
              ),
              Positioned(
                  right: 5,
                  top: 7,
                  child: Text(
                    "60%",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  right: MediaQuery.of(context).size.width * 0.8,
                  top: 7,
                  child: Text(
                    "40%",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 5, bottom: 2),
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2, bottom: 2),
                        child: Text(
                          "9",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2, bottom: 2),
                        child: Text(
                          "1",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("9", style: _textStyle1),
                    ),
                    Container(
                      child: Text("1", style: _textStyle1),
                    ),
                    Container(
                      child: Text("20", style: _textStyle1),
                    ),
                    Container(
                      child: Text("7", style: _textStyle1),
                    ),
                    Container(
                      child: Text("1", style: _textStyle1),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "اجمالي  التسديدات".tr,
                      style: _textStyle2,
                    ),
                    Text("الفرص".tr, style: _textStyle2),
                    Text("فرص كبيرة".tr, style: _textStyle2),
                    Text("تمريرات دقيقة".tr, style: _textStyle2),
                    Text("نمريرة ناجحه".tr, style: _textStyle2),
                    Text("مخالفات".tr, style: _textStyle2),
                    Text("ضربات ركنية".tr, style: _textStyle2),
                    Text("تسللات".tr, style: _textStyle2),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "2",
                        style: _textStyle1,
                      ),
                    ),
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 5, bottom: 2),
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2, bottom: 2),
                        child: Text(
                          "2",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("10", style: _textStyle1),
                    ),
                    Container(
                      child: Text("2", style: _textStyle1),
                    ),
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(),
        Padding(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 7, right: 7, top: 6.5, bottom: 2),
                      child: Text(
                        "10",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("اجمالي  التسديدات".tr, style: content),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 146,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 140,
                        color: Color.fromRGBO(1, 74, 151, 1),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 140,
                        color: Color.fromRGBO(128, 31, 76, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '3',
                              style: _textStyle3,
                            ),
                            Text(
                              'تسديدات بعيدة عن المرمى',
                              style: _textStyle4,
                            ),
                            Text(
                              '5',
                              style: _textStyle3,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 7, color: Colors.grey[50]),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              height: 80,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 7, right: 10, left: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('4', style: _textStyle3),
                                    Text(
                                      'التسديدات داخل المرمى',
                                      style: _textStyle4,
                                    ),
                                    Text(
                                      '5',
                                      style: _textStyle3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 4, bottom: 2),
                        child: Text(
                          "9",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2.5, bottom: 2),
                        child: Text(
                          "1",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("9", style: _textStyle1),
                    ),
                    Container(
                      child: Text("1", style: _textStyle1),
                    ),
                    Container(
                      child: Text("20", style: _textStyle1),
                    ),
                    Container(
                      child: Text("7", style: _textStyle1),
                    ),
                    Container(
                      child: Text("1", style: _textStyle1),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("تسديدات بعيد عن المرمي".tr, style: _textStyle2),
                    Text("تسديدات في المرمي".tr, style: _textStyle2),
                    Text("التسديدات التي تم صدها".tr, style: _textStyle2),
                    Text("تسديدات  علي العارضة".tr, style: _textStyle2),
                    Text("التسديدات داخل منطقة الجزاء".tr, style: _textStyle2),
                    Text("التسديدات خارج منطقة الجزاء".tr, style: _textStyle2),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 5, bottom: 2),
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2.5, bottom: 2),
                        child: Text(
                          "2",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("10", style: _textStyle1),
                    ),
                    Container(
                      child: Text("2", style: _textStyle1),
                    ),
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
          child: Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 5, bottom: 2),
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2, bottom: 2),
                        child: Text(
                          "9",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2, bottom: 2),
                        child: Text(
                          "1",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("9", style: _textStyle1),
                    ),
                    Container(
                      child: Text("1", style: _textStyle1),
                    ),
                    Container(
                      child: Text("20", style: _textStyle1),
                    ),
                    Container(
                      child: Text("7", style: _textStyle1),
                    ),
                    Container(
                      child: Text("1", style: _textStyle1),
                    ),
                    Container(
                      child: Text("5", style: _textStyle1),
                    ),
                    Container(
                      child: Text("4", style: _textStyle1),
                    ),
                    Container(
                      child: Text("7", style: _textStyle1),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "تمريرات  دقيقه".tr,
                      style: content,
                    ),
                    Text("نصفي الخاص".tr, style: _textStyle2),
                    Text("نصف الخصم".tr, style: _textStyle2),
                    Text("تمريرات".tr, style: _textStyle2),
                    Text("تمريرات ناجحه".tr, style: _textStyle2),
                    Text("اللمسات".tr, style: _textStyle2),
                    Text("كرات طويلة".tr, style: _textStyle2),
                    Text("كرات طويلة دقيقة".tr, style: _textStyle2),
                    Text("عرضيات".tr, style: _textStyle2),
                    Text("تمريرات عرضية دقيقة".tr, style: _textStyle2),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 5, bottom: 2),
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2, bottom: 2),
                        child: Text(
                          "2",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("10", style: _textStyle1),
                    ),
                    Container(
                      child: Text("2", style: _textStyle1),
                    ),
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                    Container(
                      child: Text("8", style: _textStyle1),
                    ),
                    Container(
                      child: Text("4", style: _textStyle1),
                    ),
                    Container(
                      child: Text("3", style: _textStyle1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
          child: Container(
            height: 360,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 5, bottom: 2),
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2, bottom: 2),
                        child: Text(
                          "9",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7, right: 7, top: 2, bottom: 2),
                        child: Text(
                          "1",
                          style: _textStyle1,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("9", style: _textStyle1),
                    ),
                    Container(
                      child: Text("1", style: _textStyle1),
                    ),
                    Container(
                      child: Text("20", style: _textStyle1),
                    ),
                    Container(
                      child: Text("7", style: _textStyle1),
                    ),
                    Container(
                      child: Text("1", style: _textStyle1),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "الفوز في ثنائيات".tr,
                      style: content,
                    ),
                    Text("محاولات مراوغة".tr, style: _textStyle2),
                    Text("مراوغات ناجحه".tr, style: _textStyle2),
                    Text("محاولات قطع الكورة".tr, style: _textStyle2),
                    Text("افتكاك كورة ناجح".tr, style: _textStyle2),
                    Text("ربح الكرات العالية".tr, style: _textStyle2),
                    Text("الاعتراضات".tr, style: _textStyle2),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Text("2", style: _textStyle1),
                      ),
                      Container(
                        child: Text("3", style: _textStyle1),
                      ),
                      Container(
                        child: Text("3", style: _textStyle1),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 7, right: 7, top: 5, bottom: 2),
                          child: Text(
                            "10",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 7, right: 7, top: 2, bottom: 2),
                          child: Text(
                            "2",
                            style: _textStyle1,
                          ),
                        ),
                      ),
                      Container(
                        child: Text("10", style: _textStyle1),
                      ),
                      Container(
                        child: Text("2", style: _textStyle1),
                      ),
                      Container(
                        child: Text("3", style: _textStyle1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
