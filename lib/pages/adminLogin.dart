import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:security_app/pages/adminMenu.dart';
import 'package:security_app/pages/securityLogin.dart';

class adminLogin extends StatefulWidget {
  const adminLogin({super.key});

  @override
  State<adminLogin> createState() => _adminLoginState();
}

class _adminLoginState extends State<adminLogin> {
  String getUser="",getPass="";
  TextEditingController user=new TextEditingController();
  TextEditingController pass=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue.shade700,
        title: Text("Admin Login",style: TextStyle(color: Colors.white),),),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            children: [
              SvgPicture.asset("assets/live.svg",height: 200,width: 200,),
              SizedBox(height: 10,),
              TextField(
                controller: user,
                decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter username",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                controller: pass,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(height:50,
                  width:200,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade700,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                      onPressed: (){
                    if(user.text=="admin" && pass.text=="12345"){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>adminMenu()));
                    }
                    else{
                      print("Invalid username or password");
                    }
                      }, child: Text("Login"))),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>securityLogin()));
                      }, child: Text("Security Login")))
            ],
          ),
        ),
      ),
    );
  }
}
