import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:rcade/age.dart';
import 'package:rcade/active.dart';
class Height extends StatefulWidget {
  const Height({Key? key}) : super(key: key);

  @override
  State<Height> createState() => _HeightState();
}
int _currentValue = 60;
class _HeightState extends State<Height> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3DB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(height:10),
          Text(
            'What is your height?',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xFF20555C),
            ),
          ),
          SizedBox(
            height: 25, // <-- SEE HERE
          ),
          Text(
            '   Height in inches',
            style: TextStyle(
              fontSize: 15,

              color: Color(0xFF20555C),
            ),
          ),
          SizedBox(
            height: 85, // <-- SEE HERE
          ),
          NumberPicker(
            value: _currentValue,
            minValue: 24,
            maxValue: 120,
            itemCount: 3,
            onChanged: (value) => setState(() => _currentValue = value),
            textStyle: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 30,
              color: Color(0xFFFA505B),

            ),
            selectedTextStyle: TextStyle(fontSize: 45,
              color: Color(0xFFFA505B),
              fontWeight: FontWeight.normal,),
          ),
          SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFFA505B),
              ),
              child: GestureDetector(
                onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Age(),),),
                child: Text(
                  '   Back   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFFA505B),
                ),
                child: GestureDetector(
                  onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Activity(),),),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height:150),],
          )
        ],

      ),);
  }
}
