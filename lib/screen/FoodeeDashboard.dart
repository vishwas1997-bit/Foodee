import 'package:flutter/material.dart';
import 'package:foodee_app/screen/widget/FoodCardWidget.dart';

import '../constant/AppTextStyles.dart';

class FoodeeDashboardPage extends StatefulWidget {
  const FoodeeDashboardPage({super.key});

  @override
  State<FoodeeDashboardPage> createState() => _FoodeeDashboardPageState();
}

class _FoodeeDashboardPageState extends State<FoodeeDashboardPage> {
  int _currentIndex = 0; // Keeps track of the selected index

  // List of screens for each navigation item
  final List<Widget> _screens = [
    Center(
        child: Text('Location',
            style: TextStyle(
                color: Color(0XFF3D405B),
                fontSize: 12,
                fontFamily: AppTextStyles.unbounded_font,
                fontWeight: FontWeight.w300))),
    Center(
        child: Text('Home',
            style: TextStyle(
                color: Color(0XFF3D405B),
                fontSize: 12,
                fontFamily: AppTextStyles.unbounded_font,
                fontWeight: FontWeight.w300))),
    Center(
        child: Text('My Cart',
            style: TextStyle(
                color: Color(0XFF3D405B),
                fontSize: 12,
                fontFamily: AppTextStyles.unbounded_font,
                fontWeight: FontWeight.w300))),
    Center(
        child: Text('Me',
            style: TextStyle(
                color: Color(0XFF3D405B),
                fontSize: 12,
                fontFamily: AppTextStyles.unbounded_font,
                fontWeight: FontWeight.w300))),
  ];

  // Function to handle tapping on the Bottom Navigation items
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: Color(0XFFF28482),
              // selected icon color
              unselectedItemColor: Color(0XFF3D405B),
              // unselected icon color
              type: BottomNavigationBarType.fixed,
              // makes sure all items are shown
              currentIndex: _currentIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                  icon: Material(
                    color: Colors.transparent,
                    child: Image.asset("assets/image/location.png", width: 24, height: 24),
                  ),
                  label: 'Location',
                ),
                BottomNavigationBarItem(
                  icon: Material(
                    color: Colors.transparent,
                    child: Image.asset("assets/image/User.png", width: 24, height: 24),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Material(
                    color: Colors.transparent,
                    child: Image.asset("assets/image/Bag.png", width: 24, height: 24),
                  ),
                  label: 'My Cart',
                ),
                BottomNavigationBarItem(
                  icon: Material(
                    color: Colors.transparent,
                    child: Image.asset("assets/image/User.png", width: 24, height: 24),
                  ),
                  label: 'Me',
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28)),
              margin: EdgeInsets.only(top: 68, left: 18, right: 18),
              child: Container(
                margin:
                    EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 20),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/image/Mask group.png",
                        width: 64,
                        height: 64,
                      ),
                    ),
                    SizedBox(width: 12),
                    Text("Welcome back, Pin!\nHow Hungry are you?",
                        style: AppTextStyles.dashboardTitleStyleLight)
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 28, left: 18, right: 18),
                child: Row(
                  spacing: 12,
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                            color: Color(0XFF3D405B),
                            fontFamily: 'Unbounded',
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                        prefixIcon: SizedBox(
                          height: 24,
                          width: 24,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 24, top: 14, bottom: 14),
                            child: Image.asset('assets/image/Search.png'),
                          ),
                        ),
                        filled: true,
                        fillColor: Color(0XFFF5F5F5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    )),
                    Container(
                      width: 44,
                      height: 44,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0XFFF28482),
                          borderRadius: BorderRadius.circular(16)),
                      child: Image.asset("assets/image/Filter.png"),
                    )
                  ],
                )),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 18, top: 26),
                child: Text(
                  "Today’s Menu",
                  style: AppTextStyles.dashboardMenuTextStyleRegular,
                )),
            Container(
              margin: EdgeInsets.only(left: 18, right: 18),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 24),
                    padding: EdgeInsets.only(left: 20, top: 40, bottom: 40),
                    decoration: BoxDecoration(
                        color: Color(0XFF84A59D),
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0XFF81B29A).withOpacity(0.4),
                              blurRadius: 32)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Free Donut!",
                            style: AppTextStyles.freeDonutTextStyle),
                        Text(
                          "For orders over \u002420",
                          style: AppTextStyles.forOrderOver,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      right: 10,
                      child: SizedBox(
                        width: 124,
                        height: 124,
                        child: Image.asset('assets/image/donut.png'),
                      ))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 220,
              margin: EdgeInsets.only(left: 18),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                children: [
                  foodCard(
                    title: "Burgers",
                    color: Color(0xFFFFF3B0), // soft yellow
                    imagePath:
                        'assets/image/burger.png', // your burger image path
                  ),
                  SizedBox(width: 16),
                  foodCard(
                    title: "Fries",
                    color: Color(0xFFFFD6D6), // soft pink
                    imagePath:
                        'assets/image/Fries.png', // your fries image path
                  ),
                  SizedBox(width: 16),
                  foodCard(
                    title: "Drinks",
                    color: Color(0xFFC3E5E5), // soft teal
                    imagePath:
                        'assets/image/drinks.png', // your drink image path
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 20, left: 18),
                child: Text(
                  "Best Offers 💕",
                  style: AppTextStyles.bestOffers,
                )),
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0XFFF2CC8F).withOpacity(0.4),
                        blurRadius: 32)
                  ]),
              margin: EdgeInsets.only(left: 18, right: 18, top: 16),
              child: Row(
                children: [
                  Image.asset('assets/image/hot-dog.png',
                      width: 88, height: 88),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Frenchdog",
                          style: AppTextStyles.frenchDogTextStyle),
                      Text("Tasty&Spicy 🌶🌶🌶",
                          style: AppTextStyles.frenchDogTastyAndSpicyTextStyle)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 72)
          ]),
        ));
  }
}
