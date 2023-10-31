import 'package:faccebook/facebook.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
              child: Text("English(us)",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))),
          SizedBox(
            height: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(margin: EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 90,
                      color: Colors.blue,
                    ),
                    Text("Facebook",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30))
                  ],
                ),
              ),
              SizedBox(height: 20,),

              //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 250),
                  child: TextButton(
                      onPressed: () {}, child: Text("forgot Password?",style: TextStyle(color: Colors.black),))),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      primary: Colors.blue, minimumSize: Size(160, 50)),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => facebook()));
                    });
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),

            ],
          ),
        ],
      ),
    );
  }
}
