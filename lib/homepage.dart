import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'pages/home.dart';
import 'pages/about.dart';
import 'pages/education.dart';
import 'pages/works.dart';
import 'pages/contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            HomeContent(),
            AboutContent(),
            EducationContent(),
            WorksContent(),
            ContactContent(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 1,
            onTabChange: _navigateBottomBar,
            padding: EdgeInsets.all(10),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: ' Home',
              ),
              GButton(
                icon: Icons.info,
                text: ' About',
              ),
              GButton(
                icon: Icons.school,
                text: ' Education',
              ),
              GButton(
                icon: Icons.business_center,
                text: ' Works',
              ),
              GButton(
                icon: Icons.phone,
                text: ' Contact',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

