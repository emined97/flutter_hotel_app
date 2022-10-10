import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kurulum_demo/hotel_const/hotel_const_view.dart';

class TextLargeBold extends StatelessWidget {
  const TextLargeBold({super.key, required this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? HotelConst.stop,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight: FontWeight.w500),
    );
  }
}
