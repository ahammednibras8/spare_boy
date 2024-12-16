import 'package:flutter/material.dart';
import 'package:spare_boy/core/constants/app_colors.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String? title;
  final String? username;
  final String? profileImageUrl;
  final bool isLoggedIn;
  final List<Widget>? actions;

  const MyAppbar({
    super.key,
    this.leading,
    this.title,
    this.username,
    this.profileImageUrl,
    required this.isLoggedIn,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      leading: isLoggedIn
          ? Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                width: 40, // Circular image size
                height: 40, // Circular image size
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Make the container circular
                  image: DecorationImage(
                    image: NetworkImage(profileImageUrl ?? ''),
                    fit: BoxFit
                        .cover, // Ensures the image covers the circle area
                  ),
                ),
              ),
            )
          : leading ??
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                ),
              ),
      title: isLoggedIn
          ? Row(
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Optional for better alignment
                  children: [
                    if (username != null) ...[
                      const Text(
                        'Hello, ',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.blackPrimary,
                        ),
                      ),
                      Text(
                        username!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ]
                  ],
                ),
              ],
            )
          : Text(
              title ?? '',
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
      actions: actions ?? [],
    );
  }
}
