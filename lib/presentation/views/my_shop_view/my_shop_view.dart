import 'package:flutter/material.dart';
import 'package:tailor_app/navigation/route_names.dart';
import 'package:tailor_app/presentation/elements/custom_back_button.dart';

import 'layout/body.dart';

class MyShopView extends StatelessWidget {
  const MyShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: const CustomBackButton(),
          title: Text(
            'My Shop',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.addNewProductViewRoute);
          },
          child: const Icon(Icons.add),
        ),
        body: const MyShopViewBody(),
      ),
    );
  }
}
