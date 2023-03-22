import 'package:flutter/material.dart';
import 'package:rcade/gender.dart';
class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3DB),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/console.png'),
          Image.asset('assets/console.png'),
          Image.asset('assets/console.png'),
          Text(
            'What is your name?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF20555C),
            ),
          ),
          SizedBox(
            height: 5, // <-- SEE HERE
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelText: '                  ',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Color(0xFFFA505B),
            ),
            child: GestureDetector(
              onTap: () =>  Navigator.push(context,
                MaterialPageRoute(builder: (context) => Gender(),),),
              child: Text(
                '    Next    ',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Image.asset('assets/console.png'),
          Image.asset('assets/console.png'),
          Image.asset('assets/console.png'),
        ],

      )
    );
  }
}
