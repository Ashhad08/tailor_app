import 'package:flutter/material.dart';
import 'package:tailor_app/configurations/app_colors.dart';
import 'package:tailor_app/navigation/route_names.dart';
import 'package:tailor_app/presentation/elements/review_tile.dart';

import 'widgets/product_card.dart';

class MyShopViewBody extends StatelessWidget {
  const MyShopViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).splashColor),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shop Name',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Business email',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          '4.5',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TabBar(
          indicatorColor: AppColors.kSecondaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          labelStyle: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontWeight: FontWeight.w500),
          labelColor: Theme.of(context).colorScheme.onSecondaryContainer,
          unselectedLabelColor:
              Theme.of(context).colorScheme.onSecondaryContainer,
          tabs: const [
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Reviews',
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              GridView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3.6 / 4,
                    crossAxisCount: 2),
                itemBuilder: ((context, index) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteNames.productDetailsViewRoute);
                    },
                    child: const ProductCard())),
              ),
              ListView.builder(
                itemCount: 10,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => const ReviewTile(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
