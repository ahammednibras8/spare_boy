import 'package:flutter/material.dart';
import 'package:spare_boy/features/common/widgets/my_appbar.dart';
import 'package:spare_boy/features/home/views/home.dart';

class StructureScreen extends StatefulWidget {
  const StructureScreen({super.key});

  @override
  State<StructureScreen> createState() => _StructureScreenState();
}

class _StructureScreenState extends State<StructureScreen> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: _screens[0],
    );
  }
}