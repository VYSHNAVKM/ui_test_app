import 'package:flutter/material.dart';
import 'package:ui_test_app/view/home_screen/home_screen.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.yellow.shade700,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'さがす',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.messenger_sharp),
            label: 'Messages',
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.location_on_outlined,
              size: 30,
            )),
      ),
      body: <Widget>[
        /// Home page
        HomeScreen(),

        /// Notifications page
        Center(child: Text('Notification')),

        /// Messages page
        Center(child: Text('Message')),
      ][currentPageIndex],
    );
  }
}
