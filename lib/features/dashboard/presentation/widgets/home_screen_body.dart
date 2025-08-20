import 'package:amar_sodai/core/theme/app_colors.dart';
import 'package:amar_sodai/core/utls/dummy_data.dart';
import 'package:amar_sodai/features/dashboard/presentation/widgets/home_screen_category_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 140.h,
          width: double.maxFinite,
          child: PageView(
            controller: _pageController,
            children: DummyData.sliderListURL
                .map((url) => _buildSliderImage(url))
                .toList(),
          ),
        ),
        SizedBox(height: 8.h),
        Center(
          child: SmoothPageIndicator(
            controller: _pageController,
            count: DummyData.sliderListURL.length,
            effect: const WormEffect(),
          ),
        ),
        SizedBox(height: 16.h),
        Text("Categories", style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 16.h),
        SizedBox(
          height: 115.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyData.categories.length,
            itemBuilder: (context, index) {
              final item = DummyData.categories[index];
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: HomescreenCategoryCard(item: item),
              );
            },
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            Text("Best Deals", style: Theme.of(context).textTheme.titleLarge),
            const Spacer(),
            TextButton(
              
              onPressed: () {},
              child: Text("See All"),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSliderImage(String url) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: CachedNetworkImageProvider(url, cacheKey: url),
          onError: (exception, stackTrace) => Center(child: Icon(Icons.error)),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
