import 'package:bakery_shop/home_screen/home_page.dart';
import 'package:flutter/material.dart';

import '../orders/order_page.dart';
import '../profile/profile_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.home_sharp,),
                    Text('HOME'),
                  ],
                ),
              ),
              SizedBox(width: 40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.bakery_dining_rounded),
                    Text('CATEGORIES'),
                  ],
                ),
              ),
              SizedBox(width: 40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.dinner_dining),
                    Text('ORDERS'),
                  ],
                ),
              ),
              SizedBox(width: 40,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.account_circle),
                    Text('PROFILE'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 40,right: 50,top: 10),
              child: Row(
                children: [
                  Text('Categories',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30),)
                ],
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 40,top: 60),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  Image.asset('assets/splash/categories.png'),
                ],
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}
