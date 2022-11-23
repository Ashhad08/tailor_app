import 'package:flutter/material.dart';

import 'layout/body.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderDetailsViewBody(),
    );
  }
}
