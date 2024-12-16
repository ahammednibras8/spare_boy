import 'package:flutter/material.dart';
import 'package:spare_boy/features/home/account_screen.dart';
import 'package:spare_boy/features/home/cart_screen.dart';
import 'package:spare_boy/features/home/search_screen.dart';
import 'package:spare_boy/features/home/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ShopScreen(),
    const SearchScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            label: 'Account',
          )
        ],
      ),
    );
  }
}
