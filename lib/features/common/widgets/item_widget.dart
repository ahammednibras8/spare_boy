import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spare_boy/core/constants/app_colors.dart';

class ItemWidget extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String sellersName;
  const ItemWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.sellersName});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
      }
    );
  }
}
