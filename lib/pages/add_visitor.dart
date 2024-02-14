import 'package:flutter/material.dart';
import 'package:security_app/Services/visitorService.dart';

class addVisitor extends StatefulWidget {
  const addVisitor({super.key});

  @override
  State<addVisitor> createState() => _addVisitorState();
}

class _addVisitorState extends State<addVisitor> {
  String Name="",Address="",Phone="",Purpose="";
  TextEditingController name=new TextEditingController();
  TextEditingController address=new TextEditingController();
  TextEditingController phone=new TextEditingController();
  TextEditingController purpose=new TextEditingController();
  void SendvaluesToApi()async{
    final response=await VisitorApiService().sendData(
        name.text.toString(),
        address.text.toString(),
        phone.text.toString(),
        purpose.text.toString());
    if(response["status"]=="success"){
      print("Successfully added");
    }
    else{
      print("Error...");
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
        body: Container(
          child: Column(
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
                controller: address,
                decoration: InputDecoration(
                    labelText: "Address",
                    hintText: "Enter address",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: phone,
                decoration: InputDecoration(
                    labelText: "phone",
                    hintText: "Enter phone",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: purpose,
                decoration: InputDecoration(
                    labelText: "Purpose",
                    hintText: "Enter purpose",
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
                      onPressed: SendvaluesToApi, child: Text("Add Visitor"))),
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
          ),
        ),
      ),
    );
  }
}
