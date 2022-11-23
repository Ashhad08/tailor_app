import 'package:flutter/material.dart';
import 'package:tailor_app/presentation/elements/custom_button.dart';
import 'package:tailor_app/presentation/elements/custom_text_field.dart';

class AddNewSkillViewBody extends StatelessWidget {
  const AddNewSkillViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).splashColor,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).splashColor,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '+ more',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: 'Title',
            validator: (val) => null,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            hintText: 'Description.....',
            validator: (val) => null,
            maxLines: 8,
            height: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            buttonText: 'Add for review',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
