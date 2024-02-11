import 'package:bakery_shop/singing_page/singup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bakerypage());
}

class Bakerypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: Scaffold(
        backgroundColor: Color(0xFF722F1E),
        body: Stack(
          children: <Widget>[
            // Background image
            Image(image: AssetImage('assets/splash/bakery icons bg (2).png'),
              fit: BoxFit.contain,
            ),
            // Content
            Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // Logo
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0),
                      child: Image.asset(
                        'assets/splash/logo.png', // Replace 'logo.png' with your logo image asset
                        height: 300.0,
                      ),
                    ),
                    // Login Form
                    LoginForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Username/Email field

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpPage()));
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30),),
              color: Color(0xFFCCCCCC),
            ),
            child: Center(
              child: Text('Login',style: TextStyle(color: Color(0xFF722F1E),fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpPage()));
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30),),
              color: Color(0xFFC37960),
            ),
            child: Center(
              child: Text('Create New Account',style: TextStyle(color: Color(0xFFFFFFFF),fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        // Login Button
        InkWell(
          onTap: () {
            // Handle login logic here
          },
          child: Padding(padding: EdgeInsets.only(right: 10,left: 180),
    child: Text('Forgot Password?',style: TextStyle(fontSize: 15,color: Colors.white),),
    )
        ),
      ],
    );
  }
}
