import 'package:flutter/material.dart';

import '../../elements/custom_back_button.dart';
import 'layout/body.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: const CustomBackButton(),
          title: Text(
            'My Orders',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        body: const MyOrdersViewBody(),
      ),
    );
  }
}
