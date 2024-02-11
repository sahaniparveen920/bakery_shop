import 'package:bakery_shop/categories/categories_page.dart';
import 'package:bakery_shop/orders/order_page.dart';
import 'package:bakery_shop/profile/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get _searchController => null;

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
              Column(
                children: [
                  Icon(Icons.home_sharp,),
                  Text('HOME'),
                ],
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
      backgroundColor: Colors.pink.shade50,
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 40,right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.menu,color: Color(0xFF722F1E),), // Replace Icons.menu with your desired menu icon// Adjust spacing between icon and text
                    Text('Pastry',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),),
                    Text('Palette',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Color(0xFF894E3F)),), // Replace 'Pastery' with your desired text
                    SizedBox(width: 10), // Adjust spacing between text and icon
                    Icon(Icons.account_circle_rounded,color: Color(0xFF722F1E),), // Replace Icons.person with your desired person icon
                  ],
                ),
              ),

              Column(
                children: [
                  Padding(padding: const EdgeInsets.only(left: 20,top: 50,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 340, decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xFF632E2E),
                        ),
                          child:TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search, size: 25,color: Colors.white,),
                              hintText: "Search..",
                              hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                              suffixIcon: Icon(Icons.mic,color: Colors.white,),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              helperStyle: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 120),
                child: Padding(padding: EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text('Top Picks For You',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),)
                    ],
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(left: 30,top: 150,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/Ellipse1.png'),
                    Image.asset('assets/Ellipse2.png'),
                    Image.asset('assets/Ellipse3.png'),
                    Image.asset('assets/Ellipse4.png'),
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 240),
                child: Padding(padding: EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text('Todays Special',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),)
                    ],
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(left: 30,top: 280),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/Frame1.png'), // Replace Icons.menu with your desired menu icon// Adjust spacing between icon and text// Replace Icons.person with your desired person icon
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Padding(padding: EdgeInsets.only(top: 470),
                child: Padding(padding: EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text('Categories',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),)
                    ],
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 510,right: 50),
                child: Padding(padding: EdgeInsets.only(left: 30),
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 25.0,
                    runSpacing: 30.0,
                    children: [
                      Image.asset('assets/secondimages/Rectangle1.png'),
                      Image.asset('assets/secondimages/Rectangle2.png'),
                      Image.asset('assets/secondimages/Rectangle3.png'),
                      Image.asset('assets/secondimages/Rectangle4.png'),
                      Image.asset('assets/secondimages/Rectangle5.png'),
                      Image.asset('assets/secondimages/Rectangle6.png'),
                      Image.asset('assets/secondimages/Rectangle7.png'),
                      Image.asset('assets/secondimages/Rectangle8.png'),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
