import 'package:flutter/material.dart';

class BGImageContainer extends StatelessWidget {
  const BGImageContainer(
      {super.key,
      required this.bgImage,
      required this.alignment,
      required this.imageScaling,
      required this.imageWidth,
      required this.imageHeight,
      required this.rotationAngle});

  final String bgImage;
  final Alignment alignment;
  final double imageScaling;
  final double imageWidth;
  final double imageHeight;
  final double rotationAngle;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      //origin: Offset(0, 0),
      angle: rotationAngle * 3.142856 / 180,
      alignment: Alignment.topLeft,
      child: Container(

        margin:  const EdgeInsets.only(bottom: 540,right: 0),
        alignment: Alignment.topLeft,
        height: imageHeight,
        width: imageWidth,
        decoration: BoxDecoration(
            //color: Colors.green,
            image: DecorationImage(
                fit: BoxFit.contain,
                //scale: imageScaling,
                image: AssetImage(bgImage),
                alignment: alignment)),
      ),
    );
  }
}
