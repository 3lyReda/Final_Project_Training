import 'package:flutter/material.dart';
import 'Account.dart';
import 'Category.dart';
import '../screens/home_screen.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  var currentIndex = 0;
  List<String>barTitle=["Product","Category","Profile"];
  List<Widget> screens = [ const HoomeScreen(), const Category(),const Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        title:  Text(barTitle[currentIndex]),
      ),
      drawer: const Drawer(
          child: Center(
        child: Text('Menu'),
      )),
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        showUnselectedLabels: false,
        iconSize: 40,
        backgroundColor: Colors.blue,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const
        [
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.home
              ),
              label: 'My Home'
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                  Icons.favorite
              ),
              label: 'My Category'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.account_circle
              ),
              label: 'My Account'
          ),
        ],
      ),
    );
  }
}
