import 'package:flutter/material.dart';
import 'package:tailor_app/presentation/elements/review_tile.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).splashColor),
            ),
            const SizedBox(
              height: 12,
            ),
            Text('Product Name', style: Theme.of(context).textTheme.headline6),
            Text('RS 500', style: Theme.of(context).textTheme.caption),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Description',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
                'There are many variations of passages of Lorem Ipsum available, but the majority have There are many variations of passages of Lorem Ipsum available, but the majority have There are many variations of passages of Lorem Ipsum available, but the majority have',
                maxLines: 3,
                style: Theme.of(context).textTheme.caption),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Review',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const ReviewTile(),
            const ReviewTile(),
            const ReviewTile(),
          ],
        ),
      ),
    );
  }
}
