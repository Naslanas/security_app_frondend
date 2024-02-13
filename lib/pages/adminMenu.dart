import 'package:flutter/material.dart';

class adminMenu extends StatefulWidget {
  const adminMenu({super.key});

  @override
  State<adminMenu> createState() => _adminMenuState();
}

class _adminMenuState extends State<adminMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue.shade700,),
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
                      onPressed: (){}, child: Text("Add Security"))),
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
                      onPressed: (){}, child: Text("View all Security"))),
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
                      onPressed: (){}, child: Text("View all Visitors"))),
            ],
          ),
        ),
      ),
    );
  }
}
