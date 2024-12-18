import 'package:flutter/material.dart';
import 'package:spare_boy/features/common/widgets/my_appbar.dart';
import 'package:spare_boy/features/home/views/account_screen.dart';
import 'package:spare_boy/features/home/views/cart_screen.dart';
import 'package:spare_boy/features/home/views/search_screen.dart';
import 'package:spare_boy/features/home/views/shop_screen.dart';

class StructureScreen extends StatefulWidget {
  const StructureScreen({super.key});

  @override
  State<StructureScreen> createState() => _StructureScreenState();
}

class _StructureScreenState extends State<StructureScreen> {
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
      // appBar: MyAppbar(
      //   isLoggedIn: true,
      //   profileImageUrl:
      //       'https://media.licdn.com/dms/image/v2/D4D03AQEhkwQsWAXcWA/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1718303752091?e=1740009600&v=beta&t=Zc4MRb6el7u6vcyVZkLorbBh2A3wxAIpNq7CqJlE8DM',
      //   username: 'Ahammed Nibras',
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(
      //         Icons.settings,
      //       ),
      //     )
      //   ],
      // ),
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
