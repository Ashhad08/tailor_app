import 'package:flutter/material.dart';
import 'package:tailor_app/presentation/elements/custom_back_button.dart';

import 'layout/body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Edit'),
      ),
      body: const ProductDetailsViewBody(),
    );
  }
}
