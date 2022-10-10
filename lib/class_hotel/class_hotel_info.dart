import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kurulum_demo/class_hotel/class_hotel_home.dart';
import 'package:kurulum_demo/hotel_const/hotel_const_view.dart';
import 'package:kurulum_demo/widget/elevatedbutton_height.dart';

class ClassHotel extends StatelessWidget {
  const ClassHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              HotelConst.image_zero,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        _textBaslik(context),
                        SizedBox(height: 20),
                        _textAciklama(context),
                        SizedBox(height: 30),
                        ElevatedButtonHeight(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ClassHotelHome()));
                            },
                            text: HotelConst.elevatedButton_text),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Text _textAciklama(BuildContext context) {
    return Text(
      HotelConst.aciklama,
      style:
          Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.grey),
    );
  }

  Text _textBaslik(BuildContext context) {
    return Text(
      HotelConst.baslik,
      style:
          Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
    );
  }
}



//container yapptık değerleini verdik,column yapıp mainaxes end yaptık, containiri cliprect yapıp kıvırcık.