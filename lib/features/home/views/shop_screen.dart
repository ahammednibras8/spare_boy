import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';
import 'package:spare_boy/features/common/widgets/banner_widget.dart';
import 'package:spare_boy/features/common/widgets/buttons.dart';
import 'package:spare_boy/features/common/widgets/catagory_widget.dart';
import 'package:spare_boy/features/common/widgets/item_widget.dart';
import 'package:spare_boy/features/home/views/cart_screen.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final List<String> categories = List.generate(4, (index) {
    return 'assets/icons/test_shop.png';
  });

  final List<String> banner = List.generate(4, (index) {
    return 'assets/banners/banner.png';
  });

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      precacheImage(const AssetImage('assets/icons/test_shop.png'), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: LayoutBuilder(builder: (context, constraints) {
        int crossAxisCount = (constraints.maxWidth / 180).floor();
        crossAxisCount = crossAxisCount < 2 ? 2 : crossAxisCount;
        return CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: [
              //carousel
              SliverToBoxAdapter(
                child: CarouselSlider(
                  items: banner
                      .map((item) => const BannerWidget())
                      .toList(),
                  options: CarouselOptions(
                    height: 180,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                ),
                //category title
              SliverToBoxAdapter(
                child: titleBuilder('Categories', isSeeAllVisible: true),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: 10,
                    (context, index) {
                  return CatagoryWidget(
                    images: categories,
                    title: 'Shirts',
                    onTap: () {},
                    numberOfItems: 572,
                  );
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
              ),
              SliverToBoxAdapter(
                child: titleBuilder('New Arrivals', isSeeAllVisible: true,onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()))),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: 0.66,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ItemWidget(
                      image: 'assets/icons/test_shop.png',
                      title: 'Test Shop',
                      sellersName: 'Test Shop company',
                      price: '1000',
                      onFavoriteTap: () {},
                      onCartTap: () {},
                    );
                  },
                  childCount: 100,
                ),
              )
            ]);
      }),
    );
  }
}

Widget titleBuilder(String title, {bool isSeeAllVisible = false, VoidCallback? onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 5),
        child: Text(
          title,
          style: GoogleFonts.raleway(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      isSeeAllVisible ? Container(
        margin: const EdgeInsets.only(right: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 8),
              child: Text('See All',
                  style: GoogleFonts.raleway(
                      color: AppColors.textPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 10),
            SmallBlueButton(
                icon: Icons.arrow_forward, onTap: onTap, size: 20, width: 27, height: 27,)
          ],
        ),
      ) :const SizedBox.shrink() 
    ],
  );
}
