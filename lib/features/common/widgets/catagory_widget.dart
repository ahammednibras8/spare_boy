import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';

class CatagoryWidget extends StatefulWidget {
  final String title;
  final List<String> images;
  final VoidCallback onTap;
  final int? numberOfItems;

  const CatagoryWidget({
    super.key,
    required this.title,
    required this.images,
    required this.onTap,
    this.numberOfItems,
  });

  @override
  State<CatagoryWidget> createState() => _CatagoryWidgetState();
}

class _CatagoryWidgetState extends State<CatagoryWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final double maxWidth = constraints.maxWidth;
      return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(9)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(66, 158, 158, 158),
                    blurRadius: 8,
                    spreadRadius: 3,
                    offset: Offset(0, 3)
                    )
              ]),
          // margin: const EdgeInsets.only(bottom: 5,left: 5,right: 5),

          child: SizedBox(
            width: maxWidth + 10,
            height: maxWidth - 10,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        imageBuilder(widget.images[0], maxWidth / 2 - 12,
                            maxWidth / 2 - 11),
                        imageBuilder(widget.images[1], maxWidth / 2 - 12,
                            maxWidth / 2 - 11)
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        imageBuilder(widget.images[2], maxWidth / 2 - 12,
                            maxWidth / 2 - 11),
                        imageBuilder(widget.images[3], maxWidth / 2 - 12,
                            maxWidth / 2 - 11)
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5,top: 4),
                            child: Text(widget.title,
                                style: GoogleFonts.raleway(
                                    color: AppColors.textPrimary,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.17,
                                    )),
                          ),
                          Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xFFDFE9FF),
                            ),
                            
                            margin: const EdgeInsets.only(right: 5,top: 4),
                            child: Text( widget.numberOfItems!=null? widget.numberOfItems.toString():'0',
                            textAlign: TextAlign.center,
                                style: GoogleFonts.raleway(
                                    color: AppColors.textPrimary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      )
                ]),
          ));
    });
  }
}

Widget imageBuilder(String image, double width, double height) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.yellow,
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    width: width,
    height: height,
    child: Image.asset(
      image,
      scale: 4,
      alignment: Alignment.center,
    ),
  );
}
