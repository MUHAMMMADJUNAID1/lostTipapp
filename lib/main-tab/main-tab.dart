import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:losttip/color.dart';
import 'package:losttip/profileView.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int _selectedIndex = 0; // Track the selected index
  final List<Widget> _pages = [
//Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),

    Center(
        child: Text('Search Page',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ))),
    Center(
        child: Text('Favorites Page',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ))),
    Center(
        child: Text('Profile Page',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ))),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 50.h,
          height: 50.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: text1Color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SvgPicture.asset(
            'assets/img/addIcon.svg',
          ),
        ),
      ),
      body: _pages[_selectedIndex], // Displa
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 107.h,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff242424), Color(0xff3D3D3D)]),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            border: Border(
                top: BorderSide(
              color: text1Color,
              width: 3,
            ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem("assets/img/homeIcon.svg", 0),
            _buildNavItem("assets/img/searchIcon.svg", 1),
            _buildNavItem("assets/img/chatIcon.svg", 2),
            _buildNavItem("assets/img/profileIcon.svg", 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String iconName, index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: SvgPicture.asset(iconName));
  }
  // child: Container(
  //   padding: EdgeInsets.all(12),
  //   decoration: BoxDecoration(
  // //    color: _selectedIndex == index ? Colors.blue : Colors.transparent,
  //     borderRadius: BorderRadius.circular(10),
  //   ),
  //   child: Icon(
  //     icon,
  //     color: _selectedIndex == index ? Colors.white : Colors.black,
  //     size: 30,
  //   ),
}
