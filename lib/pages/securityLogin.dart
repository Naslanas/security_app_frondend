import 'package:flutter/material.dart';
import 'package:security_app/Services/securityService.dart';
import 'package:security_app/pages/securityMenu.dart';

class securityLogin extends StatefulWidget {
  const securityLogin({super.key});

  @override
  State<securityLogin> createState() => _securityLoginState();
}

class _securityLoginState extends State<securityLogin> {
  String getEmail="",getPass="";
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();

  void SendApi()async{
    getEmail=email.text;
    getPass=pass.text;
    final response=await SecurityApiService().LoginApi(getEmail, getPass);
    if(response ["status"]=="success"){
      print("Successfully login");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>securityMenu()));
    }
    else if(response ["status"]=="Invalid EmailId"){
      print("Invalid EmailId");
    }
    else{
      print("Invalid password");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue.shade700,
          title: Text("Security Login",style: TextStyle(color: Colors.white),),),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child:
            Column(children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter email id",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(controller: pass,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(height:50,
                  width:200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade700,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                      onPressed: SendApi, child: Text("Login"))),
              SizedBox(height: 10,),
              SizedBox(height:50,
                  width:200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade700,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Back")))
            ],),
          ),
        ),
      ),
    );
  }
}
