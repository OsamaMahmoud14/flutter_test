import 'package:flutter/material.dart';

class x extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var Result = ModalRoute.of(context)!.settings.arguments ;
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Result is : $Result",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30
              ),
            ),
          ],
        ),
      ),
    );
  }
}
