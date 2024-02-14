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
}