import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gulf_tmt/bloc/language/language_bloc.dart';
import 'package:gulf_tmt/bloc/language/language_event.dart';
import 'package:gulf_tmt/data/constants/app_colors.dart';
import 'package:gulf_tmt/data/constants/app_font_size.dart';
import 'package:gulf_tmt/data/constants/app_strings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gulf_tmt/l10n/l10n.dart';

import 'package:gulf_tmt/ui/bits/border_radius.dart';
import 'package:gulf_tmt/ui/bits/custom_button.dart';
import 'package:gulf_tmt/ui/bits/custom_text.dart';
import 'package:gulf_tmt/ui/bits/custom_text_form_field.dart';
import 'package:gulf_tmt/ui/widgets/login_screen_widgets/bg_image_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: AppColors.loginScreenBgColor,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const BGImageContainer(
                bgImage: 'assets/images/login_screen_bg1.png',
                alignment: Alignment.topLeft,
                imageScaling: 1.0),
            const BGImageContainer(
                bgImage: 'assets/images/login_screen_bg2.png',
                alignment: Alignment.topRight,
                imageScaling: 2.0),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1384,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            data: l10n.forHelpDocumentTap,
                            fontSize: AppFontSize.textSizeSmall,
                            textColor: AppColors.grey,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.email_outlined,
                                color: AppColors.white,
                              ),
                              label: CustomText(
                                data: l10n.sampleEmail,
                                textColor: AppColors.white,
                                fontSize: AppFontSize.textSizeExtraSmall,
                              )),
                          const Divider(
                            thickness: 120.97,
                            height: 20,
                            color: Colors.black,
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: CustomText(
                              data: l10n.sampleMobile,
                              fontSize: AppFontSize.textSizeExtraSmall,
                              textColor: AppColors.white,
                            ),
                            icon: const Icon(
                              Icons.phone,
                              color: AppColors.white,
                            ),
                          )
                        ],
                      ),
                      const Divider(
                        thickness: 1.5,
                        indent: 41,
                        endIndent: 41,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0129,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3478,
                  height: MediaQuery.of(context).size.height * 0.1473,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        data: l10n.changeLanguage,
                        fontSize: AppFontSize.textSizeSmall,
                        fontWeight: FontWeight.w300,
                        textColor: AppColors.white,
                      ),
                      GestureDetector(
                        onTap: () {
                          if(kDebugMode){
                            print('English');
                          }
                          context.read<LanguageBloc>().add(const ChangeLanguage(
                              selectedLanguage: Language.english));
                        },
                        child:CustomText(
                          data: l10n.english,
                          fontSize: AppFontSize.textSizeSmall,
                          fontWeight: FontWeight.w700,
                          textColor: AppColors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if(kDebugMode){
                            print('Japanese');
                          }
                          context.read<LanguageBloc>().add(const ChangeLanguage(
                              selectedLanguage: Language.japanese));
                        },
                        child:CustomText(
                          data: l10n.japanese,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.white,
                          opacity: 0.60,
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     context.read<LanguageBloc>().add(const ChangeLanguage(
                      //         selectedLanguage: Language.thai));
                      //   },
                      //   child: const CustomText(
                      //     data: l10n.thai,
                      //     fontWeight: FontWeight.w400,
                      //     textColor: AppColors.white,
                      //     opacity: 0.60,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.0528),
                  width: MediaQuery.of(context).size.width * 0.2697,
                  height: MediaQuery.of(context).size.height * 0.1244,
                  child: Image.asset('assets/images/gulfnet_logo.png'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0234,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8066,
                  height: MediaQuery.of(context).size.height * 0.4401,
                  child: Column(
                    children: [
                       CustomText(
                        data: l10n.welcome,
                        fontSize: AppFontSize.textSizeExtraXLarge,
                        textColor: AppColors.white,
                      ),
                      CustomText(
                        data: l10n.loginWithGulfNetTmt,
                        fontSize: AppFontSize.textSizeExtraXLarge,
                        textColor: AppColors.white,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Form(
                          child: Column(
                        children: [
                          CustomTextFormField(
                            hintText: l10n.userId,
                            iconData: CupertinoIcons.person,
                            borderRadius: FormFieldBorderRadius(
                                topLeft: 10,
                                topRight: 7,
                                bottomLeft: 0,
                                bottomRight: 0),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                           CustomTextFormField(
                            hintText: l10n.password,
                            iconData: CupertinoIcons.lock,
                            borderRadius: FormFieldBorderRadius(
                                topLeft: 0,
                                topRight: 0,
                                bottomLeft: 10,
                                bottomRight: 7),
                            showPasswordIconData: Icons.visibility_outlined,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextFormField(
                            hintText: l10n.organisationCode,
                            iconData: CupertinoIcons.building_2_fill,
                            borderRadius: FormFieldBorderRadius(
                                topLeft: 10,
                                topRight: 10,
                                bottomLeft: 10,
                                bottomRight: 10),
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
                            labelColor: AppColors.white,
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
                                  child:  CustomText(
                                    data: l10n.help,
                                    fontSize: AppFontSize.textSizeSmall,
                                    textDecoration: TextDecoration.underline,
                                    textColor: AppColors.white,
                                  ))
                            ],
                          ),
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
