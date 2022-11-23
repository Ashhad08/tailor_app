import 'package:flutter/material.dart';
import 'package:tailor_app/presentation/elements/custom_button.dart';
import 'package:tailor_app/presentation/elements/custom_text_field.dart';

class AddNewProductViewBody extends StatelessWidget {
  const AddNewProductViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 100,
                width: 105,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.1),
                                shape: BoxShape.circle),
                          )),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 2,
                      child: Card(
                        color: Theme.of(context).primaryColor,
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              hintText: 'Product Title',
              validator: (val) => null,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Product Description',
              validator: (val) => null,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Size',
              validator: (val) => null,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Price',
              validator: (val) => null,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Available',
              validator: (val) => null,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Shiping Price',
              validator: (val) => null,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              buttonText: 'Upload',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
