import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomescreenCategoryCard extends StatelessWidget {
  const HomescreenCategoryCard({super.key, required this.item});

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Container(
              height: 65.h,
              width: 65.h,
              decoration: BoxDecoration(
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
