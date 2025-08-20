import 'package:amar_sodai/core/utls/dummy_data.dart';
import 'package:amar_sodai/features/categories/presentation/widgets/category_screen_header.dart';
import 'package:amar_sodai/features/common/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CategoryScreenHeader(), CategoryScreenBody()]);
  }
}

class CategoryScreenBody extends StatelessWidget {
  const CategoryScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: DummyData.categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: .85,
          ),
          itemBuilder: (context, index) {
            final item = DummyData.categories[index];
            int colorIndex = index % 4;
            return CategoryCard(
              colorIndex: colorIndex,
              item: item,
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
