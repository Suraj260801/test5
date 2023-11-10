import 'package:flutter/material.dart';

class BGImageContainer extends StatelessWidget {
  const BGImageContainer(
      {super.key,
      required this.bgImage,
      required this.alignment,
      required this.imageScaling});

  final String bgImage;
  final Alignment alignment;
  final double imageScaling;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:MediaQuery.of(context).size.height*0.6151 ,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              scale: imageScaling,
              image: AssetImage(bgImage),
              alignment: alignment)),
    );
  }
}
