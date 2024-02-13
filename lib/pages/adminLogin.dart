import 'package:flutter/material.dart';

class adminLogin extends StatefulWidget {
  const adminLogin({super.key});

  @override
  State<adminLogin> createState() => _adminLoginState();
}

class _adminLoginState extends State<adminLogin> {
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
              TextField(
                decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter username",
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
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
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
                      onPressed: (){}, child: Text("Security Login")))
            ],
          ),
        ),
      ),
    );
  }
}
