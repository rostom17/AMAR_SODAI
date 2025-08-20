import 'package:amar_sodai/core/theme/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomescreenCategoryCard extends StatelessWidget {
  const HomescreenCategoryCard({super.key, required this.item});

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4, top: 8),
        child: Column(
          children: [
            Container(
              height: 65.h,
              width: 75.h,
              decoration: BoxDecoration(
                color: AppColors.primaryShade,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    item["image"],
                    cacheKey: item["image"],
                  ),
                  fit: BoxFit.cover,
                  onError: (exception, stackTrace) =>
                      Center(child: Icon(Icons.error)),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(item['name'], style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
