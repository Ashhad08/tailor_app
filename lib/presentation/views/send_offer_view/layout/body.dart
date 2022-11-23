import 'package:flutter/material.dart';
import 'package:tailor_app/presentation/elements/custom_button.dart';
import 'package:tailor_app/presentation/elements/custom_text_field.dart';

import '../../../../configurations/app_colors.dart';
import '../../../../navigation/route_names.dart';

class SendOfferViewBody extends StatefulWidget {
  const SendOfferViewBody({Key? key}) : super(key: key);

  @override
  State<SendOfferViewBody> createState() => _SendOfferViewBodyState();
}

class _SendOfferViewBodyState extends State<SendOfferViewBody> {
  final List<String> _categoriesList = [
    'Shalwar Kameez',
    'Kurta',
    'Wascoat',
    'Pent Shirt'
  ];
  String _dropdownValue = 'Shalwar Kameez';
  bool _suitsFromStore = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Select Category',
              style: textTheme.bodyText1,
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 45,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton<String>(
                    value: _dropdownValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    style: textTheme.bodyText2,
                    underline: const SizedBox(),
                    isExpanded: true,
                    onChanged: (String? value) {
                      setState(() {
                        _dropdownValue = value!;
                      });
                    },
                    items: _categoriesList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mens',
                        style: textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hintText: '2',
                          keyBoardType: TextInputType.number,
                          validator: (val) {
                            return null;
                          })
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hintText: '1000/-',
                          keyBoardType: TextInputType.number,
                          validator: (val) {
                            return null;
                          })
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Female',
                        style: textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hintText: '2',
                          keyBoardType: TextInputType.number,
                          validator: (val) {
                            return null;
                          })
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hintText: '1000/-',
                          keyBoardType: TextInputType.number,
                          validator: (val) {
                            return null;
                          })
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kids',
                        style: textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hintText: '2',
                          keyBoardType: TextInputType.number,
                          validator: (val) {
                            return null;
                          })
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          hintText: '1000/-',
                          keyBoardType: TextInputType.number,
                          validator: (val) {
                            return null;
                          })
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Checkbox(
                    value: _suitsFromStore,
                    side: const BorderSide(
                        color: AppColors.kPrimaryColor, width: 2),
                    activeColor: AppColors.kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    checkColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                    onChanged: (bool? val) {
                      setState(() {
                        _suitsFromStore = val!;
                      });
                    }),
                Text(
                  'Suits form store?',
                  style: textTheme.bodyText2,
                )
              ],
            ),
            Text(
              'Price',
              style: textTheme.bodyText1,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
                hintText: '1000/-',
                keyBoardType: TextInputType.number,
                validator: (val) {
                  return null;
                }),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Note: Total price of all suits not only the single suit',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: const Color(0xffFF0D0D)),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Delivery Date',
              style: textTheme.bodyText1,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
                hintText: '02/5/2022',
                keyBoardType: TextInputType.datetime,
                validator: (val) {
                  return null;
                }),
            const SizedBox(
              height: 18,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Theme.of(context).splashColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Charges:',
                    style: textTheme.bodyText2,
                  ),
                  Text(
                    '5000/-',
                    style: textTheme.bodyText1!.copyWith(
                        color: AppColors.kPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              buttonText: 'Send Offer',
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.myOrdersViewRoute);
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
