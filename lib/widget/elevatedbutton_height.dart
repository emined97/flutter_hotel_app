import 'package:flutter/material.dart';

class ElevatedButtonHeight extends StatelessWidget {
  const ElevatedButtonHeight({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final double _height = 18;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: onPressed,
        child: SizedBox(
            height: MediaQuery.of(context).size.height / _height,
            width: MediaQuery.of(context).size.width / 1.5,
            child: Center(child: Text(text))));
  }
}
