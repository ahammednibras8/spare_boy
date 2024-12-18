import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/features/common/widgets/item_widget.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10), 
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: titleBuilder('New Arrivals'),
        ),
        SliverLayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = (constraints.crossAxisExtent / 180).floor();
            crossAxisCount = crossAxisCount < 2 ? 2 : crossAxisCount;
            return SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index){
                  return ItemWidget(
                    image: 'assets/icons/test_shop.png',
                    title: 'Test Shop',
                    sellersName: 'Test Shop company',
                    price: '1000',
                    onFavoriteTap: () {},
                    onCartTap: () {},
                  );
                },
                childCount: 10,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                childAspectRatio: 0.66,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              )
            );
          },
        ),
      ]),
    );
  }
}

Widget titleBuilder(String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 20,bottom: 5),
    child: Text(
      title,
      style: GoogleFonts.raleway(
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
