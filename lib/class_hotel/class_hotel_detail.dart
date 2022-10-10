import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kurulum_demo/hotel_const/hotel_const_view.dart';
import 'package:kurulum_demo/widget/container_background_grey.dart';
import 'package:kurulum_demo/widget/text_large_bold.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});
  final _imageHeight = 2.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            _stackImage(context),
            _PositionedIconLeft(),
            _PositionedIconRight(),
          ],
        ),
        HotelConst.sizedBox20,
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextLargeBold(text: HotelConst.home_row_hotel_name),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  child: Container(
                    color: HotelConst.colorblue,
                    height: MediaQuery.of(context).size.height / 35,
                    width: MediaQuery.of(context).size.width / 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.star,
                          color: HotelConst.coloramber,
                          size: 20,
                        ),
                        Text(
                          HotelConst.star_text,
                          style:
                              Theme.of(context).textTheme.subtitle2?.copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }

  Positioned _PositionedIconRight() {
    return Positioned(
        bottom: 240,
        right: 20,
        child: ContainerBackgroundGrey(
            widget: Icon(
          Icons.flag,
          color: HotelConst.colorwhite,
          size: 20,
        )));
  }

  Positioned _PositionedIconLeft() {
    return Positioned(
      bottom: 240,
      left: 20,
      child: ContainerBackgroundGrey(
          widget: Icon(
        Icons.arrow_left_sharp,
        color: HotelConst.colorwhite,
        size: 30,
      )),
    );
  }

  SizedBox _stackImage(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / _imageHeight,
        child: Image.asset(
          HotelConst.swim_hotel,
          fit: BoxFit.fill,
        ));
  }
}
