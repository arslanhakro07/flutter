import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'my_Buttons.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  var input="";
  var output="";
  void equalParser(){
    Parser p=Parser();
    Expression expression=p.parse(input);
    ContextModel contextModel=ContextModel();
    double eval=expression.evaluate(EvaluationType.REAL, contextModel);
   output=eval.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,),
          child: Column(
            children: [
              Expanded(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                    Text(input.toString(),style: TextStyle(color: Colors.white),),
                    Text(output.toString(),style: TextStyle(color: Colors.white),),
                  ],),
                ),
              ),
              Expanded(flex: 2,
                child: Column(children: [
                  Row(
                    children: [
                      my_Buttons(title: "AC",onpress: (){
                        setState(() {
                          input="";
                          output="";
                        });
                      },),

                      my_Buttons(title: "+",onpress: (){
                        setState(() {
                          input=input+"+";

                        });
                      },),
                      my_Buttons(title: "%",onpress: (){
                        setState(() {
                          input=input+"%";

                        });
                      },),
                      my_Buttons(title: "/",color: Colors.orange,onpress: (){
                        setState(() {
                          input=input+"/";

                        });
                      },),

                    ],
                  ),
                  Row(
                    children: [
                      my_Buttons(title: "7",onpress: (){
                        setState(() {
                          input+="7";
                        });
                      },),

                      my_Buttons(title: "8",onpress: (){ setState(() {
                        input+="8";
                      });},),
                      my_Buttons(title: "0",onpress: (){ setState(() {
                        input+="0";
                      });},),
                      my_Buttons(title: "x",color: Colors.orange,onpress: (){

                        setState(() {
                          input=input+"*";

                        });
                      },),

                    ],
                  ),
                  Row(
                    children: [
                      my_Buttons(title: "4",onpress: (){ setState(() {
                        input+="4";
                      });},),

                      my_Buttons(title: "5",onpress: (){ setState(() {
                        input+="5";
                      });},),
                      my_Buttons(title: "6",onpress: (){ setState(() {
                        input+="6";
                      });},),
                      my_Buttons(title: ".",color: Colors.orange,onpress: (){
                        setState(() {
                          input=input+".";

                        });
                      },),

                    ],
                  ),
                  Row(
                    children: [
                      my_Buttons(title: "1",onpress: (){ setState(() {
                        input+="1";
                      });},),

                      my_Buttons(title: "2",onpress: (){ setState(() {
                        input+="2";
                      });},),
                      my_Buttons(title: "3",onpress: (){ setState(() {
                        input+="3";
                      });},),
                      my_Buttons(title: "+",color: Colors.orange,onpress: (){
                        setState(() {
                          input=input+"+";

                        });
                      },),

                    ],
                  ),
                  Row(
                    children: [
                      my_Buttons(title: "0",onpress: (){},),

                      my_Buttons(title: "-",onpress: (){ setState(() {
                        input="-";

                      });},),
                      my_Buttons(title: "Del",onpress: (){
                        setState(() {
                          input=input.substring(0,input.length-1);


                        });
                      },),
                      my_Buttons(title: "=",color: Colors.orange,onpress: (){
                        setState(() {
                         equalParser();
                        });
                      },),

                    ],
                  ),
                ],),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
