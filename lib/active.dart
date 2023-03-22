import 'package:flutter/material.dart';
import 'package:rcade/congrats.dart';
class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFF3DB),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              '  How active are you?',
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
              '    Choose your regular activity level            ',
              style: TextStyle(
                fontSize: 15,

                color: Color(0xFF20555C),
              ),
            ),
            SizedBox(
              height: 85, // <-- SEE HERE
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),

              child: GestureDetector(
                onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Congrats(),),),
                child: Center(
                  child: Text(
                    'Beginner',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF20555C),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25, //
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),

              child: GestureDetector(
                onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Congrats(),),),
                child: Center(
                  child: Text(
                    'Intermediate',

                    style: TextStyle(

                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF20555C),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25, //
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),

              child: GestureDetector(
                onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Congrats(),),),
                child: Center(
                  child: Text(
                    'Advanced',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF20555C),
                    ),
                  ),
                ),
              ),
            ),

          ],
        )
    );
  }
}
