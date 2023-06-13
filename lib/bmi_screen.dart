import 'package:bmi/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class bmicalculator extends StatefulWidget {
  const bmicalculator({Key? key}) : super(key: key);

  @override
  State<bmicalculator> createState() => _bmicalculatorState();
}

class _bmicalculatorState extends State<bmicalculator> {
  bool ismale =true;
  bool first_click=true;
  double height=120;
  int weight=40;
  int age =20;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 15, 30, 1),
        bottomOpacity: 0.0,
        elevation: 0.0,
        // backgroundColor: Colors.redAccent,
        title: Center(
          child: Text(
            'BMI calculator',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: Container(
        color:Color.fromRGBO(10, 15, 30, 1),

        child: Column(

          children:
          [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            ismale=true;
                            first_click=false;
                          });
                        },
                        child: Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Image(
                                image:AssetImage('assets/images/male.png'),
                                color: Colors.white,
                                width: 90.0,
                                height: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: (ismale && !first_click)?Color.fromRGBO(230,20, 75, 1):Color.fromRGBO(26, 27, 45, 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            ismale = false;
                            first_click=false;
                          });
                        },
                        child: Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Image(
                                image:AssetImage('assets/images/female.png'),
                                color: Colors.white,
                                width: 90.0,
                                height: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: (!ismale && !first_click)?Color.fromRGBO(230,20, 75, 1): Color.fromRGBO(26, 27, 45, 1),
                            //color: Colors.red[800]
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                        'Height',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children:
                        [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          activeColor: Colors.white,
                          inactiveColor: Colors.white60,
                          thumbColor: Color.fromRGBO(230,20, 75, 1),
                          value: height,
                          max: 220,
                          min: 50,
                          onChanged:(value){
                            setState(() {
                              height=value;
                            });
                          }


                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(26, 27, 45, 1),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age--',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Color.fromRGBO(66, 70, 82, 1),
                                ),
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age++',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Color.fromRGBO(66, 70, 82, 1),
                                )
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromRGBO(26, 27, 45, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight--',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Color.fromRGBO(66, 70, 82, 1),
                                ),
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: '++',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Color.fromRGBO(66, 70, 82, 1),
                                )
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromRGBO(26, 27, 45, 1),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(230,20, 75, 1),
              child: MaterialButton(
                onPressed: (){
                  var result =weight /((height/100)*(height/100));
                  print (result.round());
                  Navigator.push(
                    context,
                    MaterialPageRoute(

                      builder: (context)=>bmiresultscreen(
                        result: result.round(),
                        age: age,
                        ismale: ismale,
                      ),
                    ) ,
                  );

                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:20.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// var result =weight /((height/100)*(height/100));
// print (result.round())