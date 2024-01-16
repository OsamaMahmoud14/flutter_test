import 'package:flutter/material.dart';

class third extends StatefulWidget {
  int count = 0;
  String thir ="name1";

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Stateless Counter App",
          style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           TextButton(onPressed: (){
             setState(() {
               widget.count--;
             });
           },
               child: Text(
                 "Minus",
                 style: TextStyle(
                   fontSize: 30,
                   color: Colors.blue,
                     fontWeight: FontWeight.w700

                 ),
               )
           ),
            Text(
              widget.count.toString(),
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.w700
              ),
            ),
            TextButton(onPressed: (){
              setState(() {
                widget.count++;
              });
            },
                child: Text(
                  "Plus",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    fontWeight: FontWeight.w700
                  ),
                )
            ),


          ],
        ),
      ),
    );
  }
}
