import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowComponent("تقيم اللاعب"),
        rowComponent("الفرص"),
        rowComponent("اجمالي التسديدات"),
      ],
    );
  }
  Widget rowComponent(title) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$title", style: TextStyle(fontSize: 18)),
                Text(
                  "مشاهدة الجميع",
                  style: TextStyle(color: Colors.green, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            playerBody(),
            playerBody(),
            playerBody(),

          ],
        ),
      ),
    );
  }

  Padding playerBody() {
    return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        child: Image.asset("assets/Marcelo.jpg")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("مارسيلو".tr),
                ],
              ),
              Text("89.9")
            ],
          ),
        );
  }
}
