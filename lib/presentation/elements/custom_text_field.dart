import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    // required this.controller,
    required this.validator,
    this.keyBoardType = TextInputType.text,
    this.maxLines = 1,
    this.height = 45,
  }) : super(key: key);
  final String hintText;
  final FormFieldValidator validator;
  final TextInputType keyBoardType;
  final int maxLines;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: height,
        child: TextFormField(
          maxLines: maxLines,
          // controller: widget.controller,
          keyboardType: keyBoardType,
          validator: validator,
          style: Theme.of(context).textTheme.bodyText2,
          decoration: InputDecoration(
            isDense: true,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.caption,
          ),
        ),
      ),
    );
  }
}
