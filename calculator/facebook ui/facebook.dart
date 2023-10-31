import 'package:faccebook/messenger.dart';
import 'package:faccebook/search.dart';
import 'package:flutter/material.dart';

class facebook extends StatefulWidget {
  const facebook({Key? key}) : super(key: key);

  @override
  State<facebook> createState() => _facebookState();
}

class _facebookState extends State<facebook> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(automaticallyImplyLeading: false,
              title: Text(
                "Facebook",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              backgroundColor: Colors.white,
              bottom: TabBar(tabs: [
                Tab(
                    icon: Icon(
                  Icons.home,
                )),
                Tab(
                    icon: Icon(
                  Icons.people,
                )),
                Tab(
                    icon: Icon(
                  Icons.movie,
                )),
                Tab(
                    icon: Icon(
                  Icons.notifications_outlined,
                )),
              ]),
              actions: [
                Icon(Icons.add),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Search_Screen()));
                      });
                    },
                    icon: Icon(Icons.search)),
                SizedBox(
                  width: 10,
                ),
                IconButton(onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>messengerScreen()));
                  });
                }, icon: Icon(Icons.message)),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            body: TabBarView(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/pro2.jpg"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.only(top: 15, left: 5, right: 10),
                          width: 270,
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Whats on your mind?",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35))),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.photo_album_rounded,
                              size: 50,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            margin: EdgeInsets.only(top: 10, left: 5),
                            width: 130,
                            height: 200,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/story1.jpg"),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            margin: EdgeInsets.only(top: 10, left: 5),
                            width: 120,
                            height: 200,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/story2.jpg"),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            margin: EdgeInsets.only(top: 10, left: 5),
                            width: 120,
                            height: 200,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/story3.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/pro2.jpg"),
                        ),
                        title: Text("Arslan Nawaz"),
                        subtitle: Text("posted just now"),
                      ),
                    ),
                    ClipRRect(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/cat.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 30,
                              )),
                          Text("like", style: TextStyle(fontSize: 20)),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.comment)),
                          Text(
                            "comments",
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.share)),
                          Text("share", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    Container(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/pro2.jpg"),
                        ),
                        title: Text("Arslan Nawaz"),
                        subtitle: Text("5 minutes ago"),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/story4.jpg"),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26)),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.thumb_up_alt_outlined,
                                    size: 30,
                                  )),
                              Text("like", style: TextStyle(fontSize: 20)),
                              Container(
                                  margin: EdgeInsets.only(left: 50),
                                  child: Icon(Icons.comment)),
                              Text(
                                "comments",
                                style: TextStyle(fontSize: 20),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 50),
                                  child: Icon(Icons.share)),
                              Text("share", style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/pro2.jpg"),
                        ),
                        title: Text("Arslan Nawaz"),
                        subtitle: Text("posted 10 minutes ago"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60)),
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/post5.jpg"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 30,
                              )),
                          Text("like", style: TextStyle(fontSize: 20)),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.comment)),
                          Text(
                            "comments",
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.share)),
                          Text("share", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    Container(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/pro2.jpg"),
                        ),
                        title: Text("Arslan Nawaz"),
                        subtitle: Text("1 hour ago"),
                      ),
                    ),
                    ClipRRect(
                      child: Container(
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/insta.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 30,
                              )),
                          Text("like", style: TextStyle(fontSize: 20)),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.comment)),
                          Text(
                            "comments",
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.share)),
                          Text("share", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    Container(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/pro2.jpg"),
                        ),
                        title: Text("Arslan Nawaz"),
                        subtitle: Text("5 hours ago"),
                      ),
                    ),
                    Container(
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/post6.jpg"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 30,
                              )),
                          Text("like", style: TextStyle(fontSize: 20)),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.comment)),
                          Text(
                            "comments",
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.share)),
                          Text("share", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    Container(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/pro2.jpg"),
                        ),
                        title: Text("Arslan Nawaz"),
                        subtitle: Text("10 hours ago"),
                      ),
                    ),
                    Container(
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/postfb.jpg"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 30,
                              )),
                          Text("like", style: TextStyle(fontSize: 20)),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.comment)),
                          Text(
                            "comments",
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(Icons.share)),
                          Text("share", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                          width: 80,
                          height: 120,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/story2.jpg"),
                          )),
                      title: Text(
                        index % 2 == 0 ? "Arslan Nawaz" : "Safdar Ali",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  minimumSize: Size(100, 35),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5)))),
                              onPressed: () {},
                              child: Text(
                                "Confirm",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(100, 35),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5)))),
                              onPressed: () {

                               showDialog(
                                   context: context, builder: (context){
                                     return Container(child:AlertDialog(title: Text("are you sure?"),
                                     actions: [
                                       ElevatedButton(onPressed: (){
                                         setState(() {
                                           Navigator.pop(context);

                                         });
                                       }, child: Text("yes")),

                                     ElevatedButton(onPressed: (){
                                       setState(() {
                                         Navigator.pop(context);
                                       });
                                     }, child: Text("no"))
                                     ],
                                     ));});
                                setState(() {

                                });
                              },
                              child: Text(
                                "Delete",
                                style: TextStyle(color: Colors.black),
                              ))
                        ],
                      ),
                    );
                  }),
              //Reels
              Container(color: Colors.black,
                child: Column(
                  children: [
                  SizedBox(height: 10,),
                  Row(children: [
                    Text("Reels",style: TextStyle(fontSize: 40,color: Colors.white),),
                    Container(margin: EdgeInsets.only(left: 120),
                        child: Icon(Icons.camera_alt_sharp,size: 35,color: Colors.white,)),
                    Container(margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.search,size: 35,color: Colors.white,)),
                    Container(margin: EdgeInsets.only(left: 20),
                        child:CircleAvatar(backgroundImage: AssetImage("assets/story3.jpg"),) ),
                  ],)
                ],),
              ),
              //Notifications 
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                          width: 80,
                          height: 120,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/story1.jpg"),
                          )),
                      title: Text(
                        index % 2 == 0 ? "Babar" : "Shahid",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("started following you"),
                      trailing: Container(
                        child: PopupMenuButton(
                            itemBuilder: (context) => [
                                  PopupMenuItem(child: Text("follow back")),
                                  PopupMenuItem(child: Text("Delete")),
                                ]),
                      ),
                    );
                  }),
            ])));
  }
}
