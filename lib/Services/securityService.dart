import 'package:http/http.dart' as http;
import 'package:security_app/Models/securityModel.dart';
class SecurityApiService{
  Future<List<Security>>getSecurity() async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/securityapp/viewsecurity");
    var response= await client.post(apiUrl);
    if(response.statusCode==200){
      return securityFromJson(response.body);
    }
    else{
      return [];
    }
  }
}