import 'package:flutter/material.dart';
import 'package:tailor_app/presentation/elements/custom_back_button.dart';

import 'layout/body.dart';

class PlansView extends StatelessWidget {
  const PlansView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: Text(
          'Plans',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: const PlansViewBody(),
    );
  }
}
