import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:security_app/Models/visitorModel.dart';
class VisitorApiService{
  Future<List<Visitor>> getVisitor()async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/securityapp/viewvisitor");
    var response= await client.post(apiUrl);
    if(response.statusCode==200){
      return visitorFromJson(response.body);
    }
    else{
      return[];
    }
  }
  Future<dynamic>sendData(String name,String address,String phone,String purpose)async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3001/api/securityapp/addvisitor");
    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json;charset=UTF-8"
        },
    body: jsonEncode(<String,String>{
      "name": name,
      "address": address,
      "phone": phone,
      "purpose": purpose,
    })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("Failure to add");
    }
  }
  
}