import 'package:flutter/material.dart';
class my_Buttons extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const my_Buttons ({Key? key,required this.title,this.color=Colors.white30,required this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
    child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onpress,
        child: Container(
        height: 70,
  decoration: BoxDecoration(color: color,shape: BoxShape.circle),
  child: Center(child:Text(title,style: TextStyle(color: Colors.white),))),
      ),
    ),

  );
  }
}
