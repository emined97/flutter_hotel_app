import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kurulum_demo/hotel_const/hotel_const_view.dart';

class ContainerBackgroundGrey extends StatelessWidget {
  const ContainerBackgroundGrey({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 15,
      decoration: BoxDecoration(
          borderRadius: HotelConst.borderRadiusCircular50,
          color: HotelConst.colorgrey),
      child: widget,
    );
  }
}
