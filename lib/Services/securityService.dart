import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:security_app/Models/securityModel.dart';
class SecurityApiService{
  Future<dynamic>LoginApi(String email,String password)async{
    var client=http.Client();
    var apiurl=Uri.parse("http://172.16.183.223:3001/api/securityapp/loginsecurity");
    var response=await client.post(apiurl,
    headers: <String,String>{
      "Content-Type":"application/json;charset=UTF-8"
    },
    body: jsonEncode(<String,String>{
      "email": email,
      "password": password
    })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("failure to log in");
    }
  }
  
  Future<List<Security>>getSecurity() async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.183.223:3001/api/securityapp/viewsecurity");
    var response= await client.post(apiUrl);
    if(response.statusCode==200){
      return securityFromJson(response.body);
    }
    else{
      return [];
    }
  }
  
  Future<dynamic>sendData(String name ,String Emp_id,String address,String phone,String email,String password)async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.183.223:3001/api/securityapp/regsecurity");
    var response=await client.post(apiUrl,
    headers: <String,String>{
      "Content-Type":"application/json;charset=UTF-8"
    },
    body: jsonEncode(<String,String>{
      "name": name,
      "empid": Emp_id,
      "address": address,
      "phone": phone,
      "email": email,
      "password": password,
    })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("failure to add");
    }
  }
}