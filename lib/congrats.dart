import 'package:flutter/material.dart';
import 'package:rcade/game.dart';
class Congrats extends StatefulWidget {
  const Congrats({Key? key}) : super(key: key);

  @override
  State<Congrats> createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3DB),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(
          child: Container(

              decoration: BoxDecoration(

                color: Color(0xFFFA505B),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            height: 350,
            width:250,



            child: Center(child:Text(
              '              Congratulations! \n Your account has been set up',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),)

          ),
        ),
          SizedBox(height:50),

          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFFFA505B),
            ),
            child: GestureDetector(
              onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Game(),),),
              child: Text(
                'Go to Homepage',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),],

      ),
    );
  }
}
