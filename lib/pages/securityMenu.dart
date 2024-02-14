import 'package:flutter/material.dart';
import 'package:security_app/pages/add_visitor.dart';

class securityMenu extends StatefulWidget {
  const securityMenu({super.key});

  @override
  State<securityMenu> createState() => _securityMenuState();
}

class _securityMenuState extends State<securityMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: IconButton(style: IconButton.styleFrom(
            foregroundColor: Colors.white
        ),
            onPressed: (){
              Navigator.pop(context);
            }, icon:Icon(Icons.arrow_back_rounded) ),
          backgroundColor: Colors.blue.shade700,),
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>addVisitor()));
                      }, child: Text("Add Visitor"))),
            ],
          ),
        ),
      ),
    );
  }
}
