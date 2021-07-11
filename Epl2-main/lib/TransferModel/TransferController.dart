import 'dart:convert';

import 'package:arseli/TransferModel/TransferModel.dart';
import 'package:http/http.dart' as http;

class TransferController {
  Future<TransferModel> getTransfers(String league) async =>
      TransferModel.fromJson(json.decode((await http.get(
              "https://api.eplworld.com/api/tournaments/$league/transfers",
              headers: {"Authorization": "bearer 5262d64b892e8d4341"}))
          .body));
}
final TransferController transferController = TransferController();