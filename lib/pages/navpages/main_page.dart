import 'package:flutter/material.dart';
import 'package:task_1/pages/navpages/bar_item.dart';
import 'package:task_1/pages/navpages/home_page.dart';
import 'package:task_1/pages/navpages/my_page.dart';
import 'package:task_1/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black45,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp),
            label: "BarItem",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp),
            label: "Person",
          ),
        ],
      ),
    );
  }
}
