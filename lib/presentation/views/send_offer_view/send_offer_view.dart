import 'package:flutter/material.dart';

import '../../elements/custom_back_button.dart';
import 'layout/body.dart';

class SendOfferView extends StatelessWidget {
  const SendOfferView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: Text(
          'Send Offer',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: const SendOfferViewBody(),
    );
  }
}
