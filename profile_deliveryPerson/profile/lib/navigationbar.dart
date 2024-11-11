import 'package:profile/Leaderboard.dart';
import './orders.dart';
import './ratingdemo.dart';
import './wallet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PersistentNavbarApp());
}

class PersistentNavbarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [Page1(), Page2(), Page3(), Page4()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
       bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  Icon(Icons.delivery_dining),
            label: 'Orders',
          ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.star_outline),
            label: 'Rating',
          ),
           BottomNavigationBarItem(
            icon:  Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromARGB(255, 19, 101, 22),
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.green,
        onTap: _onItemTapped,
        ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MyMainApp();
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const RatingPage();
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const WalletPage();
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MyProfilePage();
  }
}
