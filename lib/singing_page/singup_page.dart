import 'package:bakery_shop/home_screen/home_page.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 300,
            width: 400,
            color: Color(0xFF722F1E),
            child: Image.asset(
                'assets/splash/logo.png'), // Replace 'logo.png' with your image asset
          ),
          SizedBox(height: 20.0),
          Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF722F1E),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 34),
            child: Row(
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                      color: Color(0xFF722F1E),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Color(0xFFFFF6F6),
              border: Border.all(
                width: 1,
                color: Color(0xFF722F1E),
              ),
            ),
            child: TextField(),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 34),
            child: Row(
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                      color: Color(0xFF722F1E),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Color(0xFFFFF6F6),
              border: Border.all(
                width: 1,
                color: Color(0xFF722F1E),
              ),
            ),
            child: TextField(),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 34),
            child: Row(
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                      color: Color(0xFF722F1E),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Color(0xFFFFF6F6),
              border: Border.all(
                width: 1,
                color: Color(0xFF722F1E),
              ),
            ),
            child: TextField(),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 34),
            child: Row(
              children: [
                Text(
                  'Confirm Password',
                  style: TextStyle(
                      color: Color(0xFF722F1E),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Color(0xFFFFF6F6),
              border: Border.all(
                width: 1,
                color: Color(0xFF722F1E),
              ),
            ),
            child: TextField(),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Color(0xFF722F1E),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      color: Color(0xFFD6C6C3),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
