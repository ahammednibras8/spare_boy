import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';

class ItemWidget extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String sellersName;
  final double? offerPercentage;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;
  final bool isCart;
  final VoidCallback? onCartTap;
  const ItemWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      this.isFavorite = false,
      this.onFavoriteTap,
      this.isCart = false,
      this.onCartTap,
      this.offerPercentage,
      required this.sellersName});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        margin: const EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(66, 158, 158, 158),
                          blurRadius: 10,
                        )
                      ]),
                  margin: const EdgeInsets.all(5),
                  width: constraints.maxWidth,
                  height: constraints.maxWidth,
                  child: Image.asset(
                    widget.image,
                    scale: 2,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: GestureDetector(
                    onTap: widget.onFavoriteTap,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        widget.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: GestureDetector(
                    onTap: widget.onCartTap,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        widget.isCart
                            ? Icons.shopping_cart
                            : Icons.shopping_cart_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      textAlign: TextAlign.start,
                      widget.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      )),
                  Text(
                      textAlign: TextAlign.start,
                      widget.sellersName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: AppColors.textPrimary,
                      )),
                  Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      "\$${widget.price}",
                      style: GoogleFonts.raleway(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                        letterSpacing: -0.18,
                      ))
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
