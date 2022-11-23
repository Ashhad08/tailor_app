import 'package:flutter/material.dart';

import 'layout/body.dart';

class ProfileSettingsView extends StatelessWidget {
  const ProfileSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileSettingsViewBody(),
    );
  }
}
