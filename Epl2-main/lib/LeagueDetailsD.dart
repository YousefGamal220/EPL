import 'package:flutter/cupertino.dart';

import 'LeagueN.dart';
import 'package:get/get.dart';

class LeagueDetails {
  final LeagueN leagueN;
  final List<LeagueDetails1> childern;
  LeagueDetails(this.leagueN, [this.childern = const <LeagueDetails1>[]]);
}

class LeagueDetails1 {
  final String firstTeam;
  final String seconTeam;
  final String urlFirst;
  final String urlSecond;
  final String time;

  LeagueDetails1(
      this.firstTeam, this.seconTeam, this.urlFirst, this.urlSecond, this.time);
}

final LeagueN l1 = LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true);
final LeagueN l2 = LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true);
final LeagueN l3 = LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true);
final LeagueN l4 = LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true);
final LeagueN l5 = LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true);
final LeagueN l6 = LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true);
final LeagueN l7 = LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true);

List<LeagueN> leaguen = [
  LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true),
  LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true),
  LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true),
  LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true),
  LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true),
  LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true),
  LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true),
  LeagueN("الدوري الاسباني".tr, "assets/12.jpg", true),
];

List<LeagueDetails> leaguedetails = <LeagueDetails>[
  new LeagueDetails(
    l1,
    <LeagueDetails1>[
      new LeagueDetails1(
          'a'.tr, 'b'.tr, 'assets/11.jpg', 'assets/530.jpg', "9:45م".tr),
      new LeagueDetails1(
          'a'.tr, 'b'.tr, 'assets/11.jpg', 'assets/530.jpg', "9:45م".tr),
    ],
  ),
  new LeagueDetails(
    l2,
    <LeagueDetails1>[
      new LeagueDetails1(
          'a'.tr, 'b'.tr, 'assets/11.jpg', 'assets/530.jpg', "9:45م".tr),
    ],
  ),
];
