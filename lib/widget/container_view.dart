

import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
    color: color,
    );
    
  }
}