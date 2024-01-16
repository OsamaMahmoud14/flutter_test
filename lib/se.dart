import 'package:flutter/material.dart';
import 'package:untitled5/secondPage.dart';

class home extends StatefulWidget {
  int num1 = 0;
  int num2 = 0;
  int result = 0;

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "First Page"
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (val)
              {
                setState(() {
                  widget.num1=int.parse(val);
                });
              },
             decoration: InputDecoration(
               hintText:widget.num1.toString(),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10)
               )
             ),


            ),

            SizedBox(
              height: 15,
            ),
            TextField(
              onChanged: (val2)
              {
                setState(() {
                  widget.num2=int.parse(val2);
                });
              },
              decoration: InputDecoration(
                  hintText:widget.num2.toString(),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                  ),

              ),

            ),


            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          widget.result = widget.num1+widget.num2;
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>result(res: widget.result)));

                        });

                      },
                      child: Text(
                        "Add"
                      ),
                  ),
                ),
                SizedBox(
                  width: 22,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        widget.result = widget.num1-widget.num2;
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>result(res: widget.result)));
                      });
                    },
                    child: Text(
                        "Sub"
                    ),
                  ),
                ),

              ],
            ),



          ],
        ),
      ) ,
    );
  }
}
