import 'package:flutter/material.dart';

class bmiresultscreen extends StatelessWidget {
  var result ;
  final int age;
  final bool ismale;


  bmiresultscreen({
    required this.result,
    required this.age,
    required this.ismale,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 15, 30, 1),
        bottomOpacity: 0.0,
        elevation: 0.0,
        // backgroundColor: Colors.redAccent,
        title: Center(
          child: Text(
            'BMI Calculator Result',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: Container(
        color:Color.fromRGBO(10, 15, 30, 1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text(
                ismale?'Gender  : Male ':'Gender : Female',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Age  :  $age',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Result $result',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
