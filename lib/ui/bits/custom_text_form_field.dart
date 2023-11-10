import 'package:flutter/material.dart';
import 'package:gulf_tmt/data/constants/app_colors.dart';
import 'package:gulf_tmt/data/constants/app_font_size.dart';

import 'border_radius.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.iconData,
      this.borderRadius,
      this.showPasswordIconData});

  final String hintText;
  final IconData iconData;
  final FormFieldBorderRadius? borderRadius;
  final IconData? showPasswordIconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.textFormFieldBgColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(borderRadius?.topLeft ?? 0),
              topLeft: Radius.circular(borderRadius?.topRight ?? 0),
              bottomLeft: Radius.circular(borderRadius?.bottomLeft ?? 0),
              bottomRight: Radius.circular(borderRadius?.bottomRight ?? 0))),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Icon(
              iconData,
              color: AppColors.textFormFieldHintTextColor,
            ),
          ),
          Flexible(
              flex: 9,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: AppFontSize.textSizeSmall,
                        color: AppColors.textFormFieldHintTextColor),
                    border: InputBorder.none),
              )),
          Visibility(
              visible: !(showPasswordIconData == null),
              child: Flexible(
                  child: IconButton(
                color: AppColors.textFormFieldHintTextColor,
                onPressed: () {

                },
                icon: Icon(showPasswordIconData),
              )))
        ],
      ),
    );
  }
}
