import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kurulum_demo/hotel_const/hotel_const_view.dart';
import 'package:kurulum_demo/widget/container_background_grey.dart';
import 'package:kurulum_demo/widget/text_grey_bold.dart';
import 'package:kurulum_demo/widget/text_large_bold.dart';
import 'package:kurulum_demo/widget/text_small_bold.dart';

class ClassHotelHome extends StatelessWidget {
  const ClassHotelHome({Key? key}) : super(key: key);
  final double _heightRow = 4.1;
  final double _sizeIconRow = 35.0;
  final double _posionedRightFlagRow = 15;
  final double _posionedBottomFlagRow = 130;
  final double _posionedRightTextRow = 40;
  final double _posionedBottomTextRow = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 30, right: 10, top: 70),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _rowUserImageTitle(context),
            HotelConst.sizedBox20,
            TextLargeBold(text: HotelConst.info_title),
            HotelConst.sizedBox20,
            _rowTextfieldIcon(context),
            HotelConst.sizedBox20,
            _rowTwoText(),
            HotelConst.sizedBox20,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _rowStackDesign(context),
                  HotelConst.sizedBox10,
                  _rowStackDesign(context),
                  HotelConst.sizedBox10,
                  _rowStackDesign(context),
                  HotelConst.sizedBox10,
                  _rowStackDesign(context),
                  HotelConst.sizedBox10,
                ],
              ),
            ),
            HotelConst.sizedBox20,
            _rowTitleText(),
            HotelConst.sizedBox10,
            _columCardDesing(),
            _columCardDesing(),
            _columCardDesing(),
          ],
        ),
      ),
    ));
  }

  Card _columCardDesing() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: HotelConst.borderRadiusCircular30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.asset(HotelConst.swim_hotel)),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextSmallBold(
                        text: HotelConst.info_card_name,
                      ),
                      Icon(Icons.flag_circle_outlined),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_city),
                      TextGreyBold(
                        text: HotelConst.home_row_hotel_location,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                      ),
                      TextGreyBold(
                        text: HotelConst.info_number,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row _rowTitleText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextSmallBold(
          text: HotelConst.home_row_more_hotel,
        ),
        TextGreyBold(
          text: HotelConst.home_seeall,
        ),
      ],
    );
  }

  Stack _rowStackDesign(BuildContext context) {
    return Stack(
      children: [
        _rowClipRRectImage(context),
        _rowPosionedFlag(),
        _rowPosionedText(context),
        _rowPosionedLocationText(context),
      ],
    );
  }

  Positioned _rowPosionedLocationText(BuildContext context) {
    return Positioned(
      right: 90,
      bottom: 8,
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            color: HotelConst.colorblack,
          ),
          HotelConst.sizedBox20,
          Text(
            HotelConst.home_row_hotel_location,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: HotelConst.colorblack),
          )
        ],
      ),
    );
  }

  Positioned _rowPosionedText(BuildContext context) {
    return Positioned(
      bottom: _posionedBottomTextRow,
      right: _posionedRightTextRow,
      child: Text(
        HotelConst.home_row_hotel_name,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: HotelConst.colorwhite),
      ),
    );
  }

  Positioned _rowPosionedFlag() {
    return Positioned(
        right: _posionedRightFlagRow,
        bottom: _posionedBottomFlagRow,
        child: Icon(
          Icons.flag_circle_outlined,
          color: HotelConst.colorwhite,
          size: _sizeIconRow,
        ));
  }

  ClipRRect _rowClipRRectImage(BuildContext context) {
    return ClipRRect(
      borderRadius: HotelConst.borderRadiusCircular30,
      child: Image.asset(
        HotelConst.swim_hotel,
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height / _heightRow,
      ),
    );
  }

  Row _rowTwoText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextSmallBold(
          text: HotelConst.home_row_title,
        ),
        TextGreyBold(
          text: HotelConst.home_seeall,
        )
      ],
    );
  }

  Row _rowTextfieldIcon(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: HotelConst.text_field,
            ),
          ),
        ),
        HotelConst.sizedBox20,
        Container(
          decoration: BoxDecoration(
              color: HotelConst.colorblue,
              borderRadius: HotelConst.borderRadiusCircular50),
          height: MediaQuery.of(context).size.height / 12,
          width: MediaQuery.of(context).size.width / 9,
          child: Icon(
            Icons.manage_search_rounded,
            color: HotelConst.colorwhite,
          ),
        )
      ],
    );
  }

  Row _rowUserImageTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ContainerBackgroundGrey(
                widget: Image.asset(
              HotelConst.user_one,
              fit: BoxFit.fill,
            )),
            HotelConst.sizedBox20,
            Text(HotelConst.info_hello,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.black)),
          ],
        ),
        Row(
          children: [
            ContainerBackgroundGrey(widget: Icon(Icons.notification_add))
          ],
        )
      ],
    );
  }
}
