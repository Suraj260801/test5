import 'package:flutter/material.dart';
import 'package:gulf_tmt/data/constants/app_colors.dart';
import 'package:gulf_tmt/data/constants/app_font_size.dart';
import 'package:gulf_tmt/ui/bits/component_margin.dart';
import 'package:gulf_tmt/ui/bits/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPageHelpComponent extends StatelessWidget {
  const LoginPageHelpComponent(
      {super.key,
      required this.l10n,
      required this.componentHeight,
      required this.componentMargin});

  final AppLocalizations l10n;
  final double componentHeight;
  final ComponentMargin componentMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0759,),
      height: MediaQuery.of(context).size.height * 0.0514,
      child: Column(
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  data: l10n.forHelpDocumentTap,
                  fontSize: AppFontSize.textSizeSmall,
                  textColor: AppColors.grey,
                ),
                const SizedBox(width: 5,),
                CustomText(data: l10n.help,textColor: AppColors.white,textDecoration: TextDecoration.underline,)
              ],
            ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Row(

                  children: [
                    const Icon(
                      Icons.email_outlined,
                      color: AppColors.white,
                    ),
                    const SizedBox(width: 5,),
                    CustomText(
                        data: l10n.sampleEmail,
                        fontSize: AppFontSize.textSizeExtraSmall,
                        textColor: AppColors.white),

                  ],
                ),


                const VerticalDivider(width: 1,),
                Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      color: AppColors.white,
                    ),
                    SizedBox(width: 5,),

                    CustomText(
                      data: l10n.sampleMobile,
                      fontSize: AppFontSize.textSizeExtraSmall,
                      textColor: AppColors.white,
                    ),
                  ],
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
