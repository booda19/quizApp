
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../home/widgets/appBAr.dart';
import '../widgets/Category_Filter.dart';
import '../widgets/CustomCard.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarr(
        titleText: 'Men',
        leadingIcon: Icons.arrow_back_outlined,
        trailingIcon: Icons.shopping_bag,
        trailingColor: Colors.black54,
        onLeadingPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          const CategoryFilter(),
          const Gap(16),
          CustomCard(),
        ],
      ),
    );
  }
}
