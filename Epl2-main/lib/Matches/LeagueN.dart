import 'package:get/get.dart';

class LeagueN {
  String leagueName;
  String img;
  bool _expanded;

  LeagueN(this.leagueName, this.img, this._expanded);

  @override
  String toString() {
    return 'LeagueN{leagueName: $leagueName,img: $img,, _expanded: $_expanded}';
  }

  bool get expanded => _expanded;
  set expanded(bool value) {
    _expanded = value;
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
