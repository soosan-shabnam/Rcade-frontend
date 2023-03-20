import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool password_visible = false;
  @override
  void initState() {
    super.initState();
    password_visible = true;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFFF3DB),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 25, // <-- SEE HERE
            ),
            Text(
              'Sign In',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFA505B),
              ),
            ),
            SizedBox(
              height: 35, //
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(45),
                    ),
                  ),
                  prefixIcon: Align(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Icon(Icons.email_outlined),
                  ),
                  labelText: 'Enter your email address ',
                ),
              ),
            ),
            SizedBox(
              height: 3, //
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                obscureText: password_visible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(45),
                    ),
                  ),
                  prefixIcon: Align(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Icon(Icons.lock_open_rounded),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(password_visible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        password_visible = !password_visible;
                      });
                    },
                  ),
                  labelText: 'Enter your password ',
                ),
              ),
            ),
            SizedBox(
              height: 40, // <-- SEE HERE
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFFA505B),
              ),
              child: GestureDetector(
                onTap: null,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45, // <-- SEE HERE
            ),
            Image.asset('assets/halflogo.png'),
          ],
        ),);
  }
}
