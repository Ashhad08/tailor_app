import 'package:flutter/material.dart';
import 'package:tailor_app/presentation/elements/custom_back_button.dart';

import 'layout/body.dart';

class AddNewSkillView extends StatelessWidget {
  const AddNewSkillView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: Text(
          'Add New Skill',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: const AddNewSkillViewBody(),
    );
  }
}
