import 'package:flutter/material.dart';

class result extends StatelessWidget {
  int res = 0;
  result({
    required this.res
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Result : $res",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),
        ),
      ),

    );
  }
}
