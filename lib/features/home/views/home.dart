import 'package:flutter/material.dart';
import 'package:spare_boy/features/common/widgets/item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = (constraints.maxWidth / 180).floor();
        crossAxisCount = crossAxisCount < 2 ? 2 : crossAxisCount;
        return GridView.builder(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: 0.66,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          itemCount: 10,
          itemBuilder: (context,index) {
            return const ItemWidget(
                  image: 'assets/icons/test_shop.png',
                  title: 'Test Shop',
                  sellersName: 'Test Shop company',
                  price: '1000',
                );
          }
        );
      }
    );

  }
}