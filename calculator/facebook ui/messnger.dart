import 'package:faccebook/login.dart';
import 'package:flutter/material.dart';

class messengerScreen extends StatefulWidget {
  const messengerScreen({Key? key}) : super(key: key);

  @override
  State<messengerScreen> createState() => _messengerScreenState();
}

class _messengerScreenState extends State<messengerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer:
   Drawer(child:
     ListView(
       children: [
      DrawerHeader(child: Column(
        children: [
          Container(width: 100,
              height: 100,
              child: CircleAvatar(backgroundImage: AssetImage("assets/men4.jpg"),)
          ),

          Text("Arslan Nawaz",style: TextStyle(fontSize: 20),),
        ],

      )),
       // ListView.builder(itemBuilder: (index,context){return
       //   ListTile(
       //     title: Row(children: [Icon(Icons.man),
       //       Text("Profile"),
       //     ],),);
       // }),

      ListTile(
        title: Row(children: [Icon(Icons.man),
        Text("Profile"),
        ],),),
       ListTile(
         title: Row(children: [Icon(Icons.accessibility_new_sharp),
           Text("About"),
         ],),),
       ListTile(
         title: Row(children: [Icon(Icons.settings),Text("Settings ")

         ],),),
       ListTile(
         title: Row(children: [Icon(Icons.logout),
          TextButton(onPressed: (){
             setState(() {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
             });
           }, child: Text("Logout",style: TextStyle(color: Colors.black),)),
         ],),),

     ],)
  ,),

      appBar: AppBar(title: Text("Chats"),

      ),
      body:
      ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                  width: 80,
                  height: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(index%2==0?"assets/men4.jpg":"assets/men2.jpg"),
                  )),
              title: Text(
                index % 2 == 0 ? "Ali" : "Rayan",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(index%2==0?"where are you?":"That's not happening"),
              trailing: Text(index%2==0?"10pm":"11am"),
            );
          }),
    );
  }
}
