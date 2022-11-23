import 'package:flutter/material.dart';
import 'package:tailor_app/navigation/route_names.dart';
import 'package:tailor_app/presentation/elements/custom_back_button.dart';

import 'layout/body.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: Text(
          'Skills',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteNames.addNewSkillViewRoute);
        },
        child: const Icon(Icons.add),
      ),
      body: const SkillsViewBody(),
    );
  }
}
