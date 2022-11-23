import 'package:flutter/material.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 22,
            backgroundColor: Theme.of(context).splashColor,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '4.4',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              )
            ],
          ),
          title: Text(
            'User Name',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        Text(
          'There are many variations of passages of Lorem Ipsum available, but the majority have There are many variations of passages of Lorem Ipsum available, but the majority have There are many variations of passages of Lorem Ipsum available, but the majority have',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 12,
              ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(),
      ],
    );
  }
}
