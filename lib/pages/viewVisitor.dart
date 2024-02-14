import 'package:flutter/material.dart';
import 'package:security_app/Models/visitorModel.dart';
import 'package:security_app/Services/visitorService.dart';

class viewVisitor extends StatefulWidget {
  const viewVisitor({super.key});

  @override
  State<viewVisitor> createState() => _viewVisitorState();
}

class _viewVisitorState extends State<viewVisitor> {
  Future<List<Visitor>>?data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=VisitorApiService().getVisitor();
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
          title: Text("View Visitors",style: TextStyle(color: Colors.white),),
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
                          subtitle: Text("Address : "+snapshot.data![index].address.toString()+
                          "\nPhone : "+snapshot.data![index].phone.toString()+
                          "\nPurpose : "+snapshot.data![index].purpose.toString()),
                        )
                      ],
                    ),
                  );
                });
              }
              else{
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
