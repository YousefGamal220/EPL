import 'package:get/get.dart';

class LeagueN {
  String leagueName;
  String img;
  bool expanded;

  LeagueN(this.leagueName, this.img, this.expanded);

  @override
  String toString() {
    return 'LeagueN{leagueName: $leagueName,img: $img,, _expanded: $expanded}';
  }

  String get _expanded => leagueName;

  set _expanded(String value) {
    leagueName = value;
  }

  String get _leagueName => leagueName;

  set _leagueName(String value) {
    leagueName = value;
  }

  String get _img => leagueName;

  set _img(String value) {
    img = value;
  }
}

List favourites = [
  LeagueN("AustrliaPremierLeague".tr, "assets/12.jpg", true),
  LeagueN("AustrliaPremierLeague".tr, "assets/12.jpg", true),
  LeagueN("CanadaPremierLeague".tr, "assets/12.jpg", true),
  LeagueN("ChinaPremierLeague".tr, "assets/12.jpg", true)
];
