import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gulf_tmt/bloc/login/login_bloc.dart';
import 'package:gulf_tmt/bloc/login/login_state.dart';
import 'package:gulf_tmt/data/constants/app_colors.dart';
import 'package:gulf_tmt/ui/bits/component_margin.dart';
import 'package:gulf_tmt/ui/pieces/responsive_layout.dart';
import 'package:gulf_tmt/ui/widgets/login_screen_widgets/bg_image_container.dart';
import 'package:gulf_tmt/ui/widgets/login_screen_widgets/language_chnage_component.dart';
import 'package:gulf_tmt/ui/widgets/login_screen_widgets/login_form.dart';
import 'package:gulf_tmt/ui/widgets/login_screen_widgets/login_page_help_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return BlocProvider<LoginBlock>(
        create: (BuildContext context) => LoginBlock(),
        child: ResponsiveLayout(
          tabWidget: SafeArea(
            child: Scaffold(
                body: Container(
              color: AppColors.loginScreenBgColor,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  BGImageContainer(
                    bgImage: 'assets/images/login_screen_bg1.png',
                    alignment: Alignment.topCenter,
                    imageScaling: 1,
                    imageWidth: MediaQuery.of(context).size.width * 1.444,
                    imageHeight: MediaQuery.of(context).size.height * 0.8296,
                    rotationAngle: 0,
                  ),
                  BGImageContainer(
                    bgImage: 'assets/images/login_screen_bg2.png',
                    alignment: Alignment.topRight,
                    imageScaling: 1,
                    imageWidth: MediaQuery.of(context).size.width * 0.5325,
                    imageHeight: MediaQuery.of(context).size.height * 0.3902,
                    rotationAngle: -21.7,
                  ),
                  Column(
                    children: [
                      LoginPageHelpComponent(
                        l10n: l10n,
                        componentHeight:
                            MediaQuery.of(context).size.height * 0.0514,
                        componentMargin: ComponentMargin(
                            top: MediaQuery.of(context).size.height * 0.0759),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0158,
                      ),
                      Divider(
                        thickness: 1.5,
                        indent: MediaQuery.of(context).size.width * 0.2862,
                        endIndent: MediaQuery.of(context).size.width * 0.2862,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0105,
                      ),
                      LanguageChangeComponent(
                        l10n: l10n,
                        componentHeight:
                            MediaQuery.of(context).size.height * 0.1032,
                        componentWidth:
                            MediaQuery.of(context).size.width * 0.1827,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1703),
                        width: MediaQuery.of(context).size.width * 0.1424,
                        height: MediaQuery.of(context).size.height * 0.0935,
                        child: Image.asset('assets/images/gulfnet_logo.png'),
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.0234,
                      // ),

                      BlocBuilder<LoginBlock, LoginState>(
                          builder: (BuildContext context, LoginState state) {
                        return LoginForm(
                          l10n: l10n,
                          componentHeight:
                              MediaQuery.of(context).size.height * 0.3309,
                          componentWidth:
                              MediaQuery.of(context).size.width * 0.4260,
                          state: state,
                        );
                      })
                    ],
                  ),
                ],
              ),
            )),
          ),
          mobileWidget: SafeArea(
            child: Scaffold(
                body: Container(
              color: AppColors.loginScreenBgColor,
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.topCenter,
                children: [
                  // const BGImageContainer(
                  //     bgImage: 'assets/images/login_screen_bg1.png',
                  //     alignment: Alignment.topLeft,
                  //     imageScaling: 0.8),
                  // const BGImageContainer(
                  //     bgImage: 'assets/images/login_screen_bg2.png',
                  //     alignment: Alignment.topRight,
                  //     imageScaling: 1.0),
                  Column(
                    children: [
                      LoginPageHelpComponent(
                          l10n: l10n,
                          componentHeight:
                              MediaQuery.of(context).size.height * 0.1384,
                          componentMargin: ComponentMargin(top: 10)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0129,
                      ),
                      Divider(
                        thickness: 1.5,
                        indent: MediaQuery.of(context).size.width * 0.2862,
                        endIndent: MediaQuery.of(context).size.width * 0.2862,
                      ),
                      LanguageChangeComponent(
                          l10n: l10n,
                          componentHeight:
                              MediaQuery.of(context).size.height * 0.1473,
                          componentWidth:
                              MediaQuery.of(context).size.width * 0.3478),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.0528),
                        width: MediaQuery.of(context).size.width * 0.2697,
                        height: MediaQuery.of(context).size.height * 0.1244,
                        child: Image.asset('assets/images/gulfnet_logo.png'),
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.0234,
                      // ),
                      BlocProvider<LoginBlock>(
                          create: (BuildContext context) => LoginBlock(),
                          child: BlocBuilder<LoginBlock, LoginState>(builder:
                              (BuildContext context, LoginState state) {
                            return LoginForm(
                              l10n: l10n,
                              componentHeight:
                                  MediaQuery.of(context).size.height * 0.4401,
                              componentWidth:
                                  MediaQuery.of(context).size.width * 0.8066,
                              state: state,
                            );
                          }))
                    ],
                  ),
                ],
              ),
            )),
          ),
        ));
  }
}
