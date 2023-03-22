import 'package:flutter/material.dart';
import 'package:rcade/name.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool pass_visible=false;
  @override
  void initState() {
    super.initState();
    pass_visible = true;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFDCF6F),
      body:Column(
        children:[SizedBox(
          height: 115, // <-- SEE HERE
        ),
          Text(
            'Create Your Account',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFA505B),
            ),
          ),
          SizedBox(
            height: 25, //
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
                prefixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Icon(Icons.email_outlined),
                ),
                labelText: '   Enter your email address    ',
              ),
            ),
          ),
          SizedBox(
            height: 3, //
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              obscureText: pass_visible,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                prefixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Icon(Icons.lock_open_rounded),
                ),
                suffixIcon: IconButton(
                  icon: Icon(pass_visible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      pass_visible = !pass_visible;
                    });
                  },
                ),
                labelText: '    Enter your password     ',
              ),
            ),
          ),
          SizedBox(
            height: 3, //
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              obscureText: pass_visible,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                prefixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Icon(Icons.lock_open_rounded),
                ),
                suffixIcon: IconButton(
                  icon: Icon(pass_visible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      pass_visible = !pass_visible;
                    });
                  },
                ),
                labelText: '    Confirm your password     ',
              ),
            ),
          ),
          SizedBox(
            height: 55, // <-- SEE HERE
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Color(0xFFFA505B),
            ),
            child: GestureDetector(
              onTap: () =>  Navigator.push(context,
                MaterialPageRoute(builder: (context) => Name(),),),
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
        ],
      )
    );
  }
}
