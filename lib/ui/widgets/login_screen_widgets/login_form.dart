import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gulf_tmt/bloc/login/login_bloc.dart';
import 'package:gulf_tmt/bloc/login/login_event.dart';
import 'package:gulf_tmt/bloc/login/login_state.dart';
import 'package:gulf_tmt/data/constants/app_colors.dart';
import 'package:gulf_tmt/data/constants/app_font_size.dart';
import 'package:gulf_tmt/ui/bits/border_radius.dart';
import 'package:gulf_tmt/ui/bits/custom_button.dart';
import 'package:gulf_tmt/ui/bits/custom_text.dart';
import 'package:gulf_tmt/ui/bits/custom_text_form_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginForm extends StatelessWidget {
  const LoginForm(
      {super.key,
      required this.l10n,
      required this.componentHeight,
      required this.componentWidth,
      required this.state});

  final AppLocalizations l10n;
  final double componentHeight;
  final double componentWidth;
  final LoginState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: componentWidth,
      height: componentHeight,
      //color: Colors.yellow,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: CustomText(
              data: l10n.welcome,
              fontSize: AppFontSize.textSizeExtraXLarge,
              textColor: AppColors.white,
            ),
          ),
          Flexible(
            flex: 1,
            child: CustomText(
              data: l10n.loginWithGulfNetTmt,
              fontSize: AppFontSize.textSizeExtraXLarge,
              textColor: AppColors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Flexible(
            flex: 8,
            child: Container(
                // color: Colors.green,
                child: Form(
                    child: Column(
              children: [
                CustomTextFormField(
                  hintText: l10n.userId,
                  iconData: CupertinoIcons.person,
                  borderRadius: const FormFieldBorderRadius(
                      topLeft: 10, topRight: 7, bottomLeft: 0, bottomRight: 0),
                  onTap: () {
                    if (kDebugMode) {
                      print('inside User Id');
                    }
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextFormField(
                  hintText: l10n.password,
                  iconData: CupertinoIcons.person,
                  borderRadius: const FormFieldBorderRadius(
                      topLeft: 0, topRight: 0, bottomLeft: 10, bottomRight: 7),
                  showPasswordIconData: Icons.visibility_outlined,
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  hintText: l10n.organisationCode,
                  iconData: CupertinoIcons.building_2_fill,
                  borderRadius: const FormFieldBorderRadius(
                      topLeft: 10,
                      topRight: 10,
                      bottomLeft: 10,
                      bottomRight: 10),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  label: l10n.logIn,
                  height: MediaQuery.of(context).size.height * 0.0645,
                  width: MediaQuery.of(context).size.width,
                  radius: 25,
                  color: AppColors.loginButtonColor,
                  labelSize: 26,
                  labelFontWeight: FontWeight.w700,
                  labelColor: AppColors.white, onClick: () {
                  context
                      .read<LoginBlock>()
                      .add(LoginButtonClickedEvent());
                },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      data: l10n.forgotPasswordTapHere,
                      fontSize: AppFontSize.textSizeSmall,
                      textColor: AppColors.grey,
                      textDecoration: TextDecoration.underline,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: CustomText(
                          data: l10n.help,
                          fontSize: AppFontSize.textSizeSmall,
                          textDecoration: TextDecoration.underline,
                          textColor: AppColors.white,
                        ))
                  ],
                ),
              ],
            ))),
          )
        ],
      ),
    );
  }
}
