// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/config/colors.dart';
import 'package:wallet/screens/favorite_screen.dart';
import 'package:wallet/screens/history_screen.dart';
import 'package:wallet/screens/qrcode_screen.dart';
import 'package:wallet/screens/settings_screen.dart';
import 'package:wallet/screens/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedTabIndex = 0;

  final List _pages = [
    HomeScreen(),
    FavoriteScreen(),
    QrCodeScreen(),
    HistoryScreen(),
    SettingScreen(),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedTabIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: configColor(ColorsApp.black50),
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedTabIndex,
            onTap: _changeIndex,
            backgroundColor: configColor(ColorsApp.mainColor),
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            selectedItemColor: configColor(ColorsApp.white),
            unselectedItemColor: configColor(ColorsApp.white50),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  width: 20,
                  color: _selectedTabIndex == 0
                      ? configColor(ColorsApp.white)
                      : configColor(ColorsApp.white50),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/favorite.svg',
                  width: 20,
                  color: _selectedTabIndex == 1
                      ? configColor(ColorsApp.white)
                      : configColor(ColorsApp.white50),
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/camera.svg',
                  width: 20,
                  color: _selectedTabIndex == 2
                      ? configColor(ColorsApp.white)
                      : configColor(ColorsApp.white50),
                ),
                label: 'Scanner',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/history.svg',
                  width: 20,
                  color: _selectedTabIndex == 3
                      ? configColor(ColorsApp.white)
                      : configColor(ColorsApp.white50),
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  width: 20,
                  color: _selectedTabIndex == 4
                      ? configColor(ColorsApp.white)
                      : configColor(ColorsApp.white50),
                ),
                label: 'Menu',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
