import 'package:flutter/material.dart';
import 'package:security_app/Services/securityService.dart';

class addSecurity extends StatefulWidget {
  const addSecurity({super.key});

  @override
  State<addSecurity> createState() => _addSecurityState();
}

class _addSecurityState extends State<addSecurity> {
  String Name="",Emp_id="",Address="",Phone="",Email="",Password="";
  TextEditingController name=new TextEditingController();
  TextEditingController empid=new TextEditingController();
  TextEditingController address=new TextEditingController();
  TextEditingController phone=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();
  void SendValuesToApi() async{
    final response= await SecurityApiService().sendData(
        name.text.toString(),
        empid.text.toString(),
        address.text.toString(),
        phone.text.toString(),
        email.text.toString(),
        password.text.toString());
    if(response["status"]=="success"){
      print("Successfully Added");
    }
    else{
      print("Error....");
    }
  }
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
                  controller: name,
                  decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: empid,
                  decoration: InputDecoration(
                      labelText: "Emp_id",
                      hintText: "Enter employee id",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: address,
                  decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Enter address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: phone,
                  decoration: InputDecoration(
                      labelText: "Phone",
                      hintText: "Enter phone number",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: email,
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Email id",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: password,
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
                        onPressed: SendValuesToApi, child: Text("Add"))),
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
