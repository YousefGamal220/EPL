import 'package:arseli/Matches/MatchesModels/Doc.dart';

class MatchModel {
    List<Doc> docs;
    bool hasNextPage;
    bool hasPrevPage;
    int limit;
    var nextPage;
    int page;
    int pagingCounter;
    var prevPage;
    int totalDocs;
    int totalPages;

    MatchModel({this.docs, this.hasNextPage, this.hasPrevPage, this.limit, this.nextPage, this.page, this.pagingCounter, this.prevPage, this.totalDocs, this.totalPages});

    factory MatchModel.fromJson(Map<String, dynamic> json) {
        return MatchModel(
            docs: json['docs'] != null ? (json['docs'] as List).map((i) => Doc.fromJson(i)).toList() : null, 
            hasNextPage: json['hasNextPage'], 
            hasPrevPage: json['hasPrevPage'], 
            limit: json['limit'], 
            nextPage: json['nextPage'] != null ? json['nextPage'] : null,
            page: json['page'], 
            pagingCounter: json['pagingCounter'], 
            prevPage: json['prevPage'] != null ? json['prevPage'] : null,
            totalDocs: json['totalDocs'], 
            totalPages: json['totalPages'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['hasNextPage'] = this.hasNextPage;
        data['hasPrevPage'] = this.hasPrevPage;
        data['limit'] = this.limit;
        data['page'] = this.page;
        data['pagingCounter'] = this.pagingCounter;
        data['totalDocs'] = this.totalDocs;
        data['totalPages'] = this.totalPages;
        if (this.docs != null) {
            data['docs'] = this.docs.map((v) => v.toJson()).toList();
        }
        if (this.nextPage != null) {
            data['nextPage'] = this.nextPage.toJson();
        }
        if (this.prevPage != null) {
            data['prevPage'] = this.prevPage.toJson();
        }
        return data;
    }
}