import 'package:flutter/material.dart';
import 'package:security_app/Models/securityModel.dart';
import 'package:security_app/Services/securityService.dart';

class viewSecurity extends StatefulWidget {
  const viewSecurity({super.key});

  @override
  State<viewSecurity> createState() => _viewSecurityState();
}

class _viewSecurityState extends State<viewSecurity> {

  Future<List<Security>>?data;
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    data = SecurityApiService().getSecurity();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: IconButton(style: IconButton.styleFrom(
          foregroundColor: Colors.white
        ),
            onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_rounded)),
          backgroundColor: Colors.blue.shade700,
          title: Text("View Security",style: TextStyle(color: Colors.white),),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot){
              if(snapshot.hasData && snapshot.data!.isNotEmpty){
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                    itemBuilder: (context,index){
                  return Card(
                    color: Colors.blue.shade100,
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text(snapshot.data![index].name[0].toString()),
                            backgroundColor: Colors.blue.shade300,
                          ),
                          title: Text("Name : "+snapshot.data![index].name.toString()),
                          subtitle: Text("Empid : "+snapshot.data![index].empid.toString()+
                              "\nAddress : "+snapshot.data![index].address.toString()+
                          "\nPhone : "+snapshot.data![index].phone.toString()+
                          "\nEmail : "+snapshot.data![index].email.toString()
                          ),
                        )
                      ],
                    ),
                  );
                });
              }
              else
                {
                  return CircularProgressIndicator();
                }
            }),
      ),
    );
  }
}
