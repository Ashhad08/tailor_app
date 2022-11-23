import 'package:flutter/material.dart';
import 'package:tailor_app/presentation/elements/custom_back_button.dart';

import 'layout/body.dart';

class CustomerSupportView extends StatelessWidget {
  const CustomerSupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: Text(
          'Customer Support',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: const CustomerSupportViewBody(),
    );
  }
}
