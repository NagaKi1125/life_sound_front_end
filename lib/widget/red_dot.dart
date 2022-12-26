import 'package:flutter/material.dart';
import '../../resource/dimens.dart';

class RedDot extends StatelessWidget {
  const RedDot({super.key});

  @override
  Widget build(BuildContext context) => _redDot();

  Widget _redDot() => Container(
      margin: const EdgeInsets.only(left: 10, bottom: 4),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(Dimens.defaultRadiusMax)));
}
