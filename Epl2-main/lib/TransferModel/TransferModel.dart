import 'Doc.dart';

class TransferModel {
    List<Doc> docs;
    bool hasNextPage;
    bool hasPrevPage;
    int limit;
    int nextPage;
    int page;
    int pagingCounter;
    var prevPage;
    int totalDocs;
    int totalPages;

    TransferModel({this.docs, this.hasNextPage, this.hasPrevPage, this.limit, this.nextPage, this.page, this.pagingCounter, this.prevPage, this.totalDocs, this.totalPages});

    factory TransferModel.fromJson(Map<String, dynamic> json) {
        return TransferModel(
            docs: json['docs'] != null ? (json['docs'] as List).map((i) => Doc.fromJson(i)).toList() : null, 
            hasNextPage: json['hasNextPage'], 
            hasPrevPage: json['hasPrevPage'], 
            limit: json['limit'], 
            nextPage: json['nextPage'], 
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
        data['nextPage'] = this.nextPage;
        data['page'] = this.page;
        data['pagingCounter'] = this.pagingCounter;
        data['totalDocs'] = this.totalDocs;
        data['totalPages'] = this.totalPages;
        if (this.docs != null) {
            data['docs'] = this.docs.map((v) => v.toJson()).toList();
        }
        if (this.prevPage != null) {
            data['prevPage'] = this.prevPage.toJson();
        }
        return data;
    }
}