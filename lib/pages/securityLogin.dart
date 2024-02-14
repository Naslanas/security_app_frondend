import 'package:flutter/material.dart';

class securityLogin extends StatefulWidget {
  const securityLogin({super.key});

  @override
  State<securityLogin> createState() => _securityLoginState();
}

class _securityLoginState extends State<securityLogin> {
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
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter email id",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
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
                      onPressed: (){}, child: Text("Login"))),
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
