import 'package:flutter/material.dart';

class addSecurity extends StatefulWidget {
  const addSecurity({super.key});

  @override
  State<addSecurity> createState() => _addSecurityState();
}

class _addSecurityState extends State<addSecurity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: Text("Add Security",style: TextStyle(color: Colors.white),),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child:Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Emp_id",
                      hintText: "Enter employee id",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Enter address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Phone",
                      hintText: "Enter phone number",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Email id",
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
                        onPressed: (){}, child: Text("Add"))),
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
          
              ],
            ) ,
          ),
        ),
      ),
    );
  }
}
