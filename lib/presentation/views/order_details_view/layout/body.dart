import 'package:flutter/material.dart';
import 'package:tailor_app/configurations/app_colors.dart';
import 'package:tailor_app/presentation/elements/custom_button.dart';

class OrderDetailsViewBody extends StatefulWidget {
  const OrderDetailsViewBody({Key? key}) : super(key: key);

  @override
  State<OrderDetailsViewBody> createState() => _OrderDetailsViewBodyState();
}

class _OrderDetailsViewBodyState extends State<OrderDetailsViewBody> {
  final List<String> _orderStatusList = [
    'Pending',
    'Working',
    'Ready to pick',
  ];

  String _status = 'Pending';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order id',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    '#2134245',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Product Name',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'Date',
                style: Theme.of(context).textTheme.caption!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).splashColor),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Status',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  PopupMenuButton<String>(
                    icon: Text(
                      'Change Status',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: AppColors.kPrimaryColor),
                    ),
                    padding: EdgeInsets.zero,
                    onSelected: (String val) {
                      setState(() {
                        _status = val;
                      });
                    },
                    itemBuilder: (BuildContext context) => _orderStatusList
                        .map((e) => PopupMenuItem<String>(
                              value: e,
                              child: Text(e,
                                  style: Theme.of(context).textTheme.bodyText2),
                            ))
                        .toList(),
                  ),
                ],
              ),
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    _status,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Invoice',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              // TODO: implement Invoice details here
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Contact support',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Contact Customer',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
