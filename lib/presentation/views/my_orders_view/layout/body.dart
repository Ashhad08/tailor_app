import 'package:flutter/material.dart';

import '../../../../configurations/app_colors.dart';
import 'widgets/product_card.dart';

class MyOrdersViewBody extends StatelessWidget {
  const MyOrdersViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorWeight: 0,
          splashBorderRadius: BorderRadius.circular(12),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          indicatorPadding: EdgeInsets.zero,
          indicator: BoxDecoration(
            color: AppColors.kSecondaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          unselectedLabelColor:
              Theme.of(context).colorScheme.onSecondaryContainer,
          labelStyle:
              Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 12),
          tabs: const [
            Tab(
              text: 'Pending',
            ),
            Tab(
              text: 'Working',
            ),
            Tab(
              text: 'Completed',
            ),
            Tab(
              text: 'Ready to pick',
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              ListView.builder(
                itemCount: 8,
                padding: const EdgeInsets.all(20),
                itemBuilder: (context, index) => const ProductCard(),
              ),
              const SizedBox(),
              const SizedBox(),
              const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
