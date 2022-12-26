import 'package:flutter/material.dart';
import '../gen/colors.gen.dart';

Color bg = Colors.white;
Color radioCheck = Colors.white;
Color radioBorderColors = ColorName.addItemCategorySearchBg;

class CustomRadioButton extends StatelessWidget {
  final String title;
  final bool selected;
  const CustomRadioButton(
      {super.key, required this.title, required this.selected});

  @override
  Widget build(BuildContext context) {
    if (selected) {
      bg = ColorName.addItemInputEnableBorder;
      radioCheck = ColorName.addItemReceiptBtn;
      radioBorderColors = ColorName.addItemReceiptBtn;
    } else {
      bg = ColorName.addItemBg;
      radioCheck = ColorName.addItemBg;
      radioBorderColors = ColorName.addItemCategorySearchBg;
    }
    return Container(
        decoration: BoxDecoration(color: bg),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                color: Colors.transparent,
                border: Border(
                    bottom:
                        BorderSide(color: ColorName.addItemInputEnableBorder))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _customRadio(radioCheck: radioCheck),
                  Text(title)
                ])));
  }

  Widget _customRadio({required Color radioCheck}) => AnimatedContainer(
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.only(right: 20),
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
          border: Border.all(color: radioBorderColors),
          color: radioCheck,
          borderRadius: BorderRadius.circular(50)),
      child: const Icon(Icons.check, size: 13, color: Colors.white));
}
