import 'package:flutter/material.dart';
import 'package:tailor_app/presentation/elements/custom_button.dart';
import 'package:tailor_app/presentation/elements/custom_text_field.dart';

class CustomerSupportViewBody extends StatelessWidget {
  const CustomerSupportViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact us',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Enter your message here',
              validator: (val) => null,
              maxLines: 8,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              buttonText: 'Send Message',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
