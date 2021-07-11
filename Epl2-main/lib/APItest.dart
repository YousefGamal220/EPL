import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class EPLAPI{
  final  header = "bearer 5262d64b892e8d4341";
  var baseURL ={
    "scheme":"https",
    "host":"api.eplworld.com",
    "path":"/api/"
    };
  Map<String, String> pars ={};
  EPLAPI(var reType, [var after]){
    after = (after!=null)?"/"+after:"";
    SetPath(reType);

    if(after!=null)
      SetPath(after);
    
  }

  void SetPath(var path)
  {
    this.baseURL["path"] += path+"/";
  }

  void SetPar(var key,var val)
  {
    this.pars[key]= val;
  } 

  GetData() async{
    var eplUri = Uri(
      scheme:this.baseURL["scheme"],
      host:this.baseURL["host"],
      path:this.baseURL["path"],
      queryParameters: this.pars);
    var response = await http.get(
      eplUri,
      headers: {HttpHeaders.authorizationHeader: this.header},
    );
    final responseJson = jsonDecode(response.body);
    print(responseJson);
    return responseJson;
  }
}