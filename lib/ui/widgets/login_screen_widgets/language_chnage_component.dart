import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gulf_tmt/bloc/language/language_bloc.dart';
import 'package:gulf_tmt/bloc/language/language_event.dart';
import 'package:gulf_tmt/data/constants/app_colors.dart';
import 'package:gulf_tmt/data/constants/app_font_size.dart';
import 'package:gulf_tmt/l10n/l10n.dart';
import 'package:gulf_tmt/ui/bits/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageChangeComponent extends StatelessWidget {
  const LanguageChangeComponent({super.key, required this.l10n, required this.componentHeight, required this.componentWidth});
  final AppLocalizations l10n;
  final double componentHeight;
  final double componentWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: componentWidth,
      height: componentHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: CustomText(
              data: l10n.changeLanguage,
              fontSize: AppFontSize.textSizeSmall,
              fontWeight: FontWeight.w300,
              textColor: AppColors.white,
            ),
          ),
          Flexible(
              child: GestureDetector(
                onTap: () {
                  context.read<LanguageBloc>().add(
                      const ChangeLanguage(
                          selectedLanguage: Language.english));
                },
                child: CustomText(
                  data: l10n.english,
                  fontSize: AppFontSize.textSizeSmall,
                  fontWeight: context
                      .read<LanguageBloc>()
                      .state
                      .selectedLanguage ==
                      Language.english
                      ? FontWeight.w700
                      : FontWeight.w400,
                  textColor: AppColors.white,
                  opacity: context
                      .read<LanguageBloc>()
                      .state
                      .selectedLanguage ==
                      Language.english
                      ? 1.0
                      : 0.6,
                ),
              )),
          Flexible(
              child: GestureDetector(
                onTap: () {
                  context.read<LanguageBloc>().add(
                      const ChangeLanguage(
                          selectedLanguage: Language.japanese));
                },
                child: CustomText(
                  data: l10n.japanese,
                  fontWeight: context
                      .read<LanguageBloc>()
                      .state
                      .selectedLanguage ==
                      Language.japanese
                      ? FontWeight.w700
                      : FontWeight.w400,
                  textColor: AppColors.white,
                  opacity: context
                      .read<LanguageBloc>()
                      .state
                      .selectedLanguage ==
                      Language.japanese
                      ? 1.0
                      : 0.6,
                ),
              )),
          Flexible(
              child: GestureDetector(
                onTap: () {
                  context.read<LanguageBloc>().add(
                      const ChangeLanguage(
                          selectedLanguage: Language.thai));
                },
                child: CustomText(
                  data: l10n.thai,
                  fontWeight: context
                      .read<LanguageBloc>()
                      .state
                      .selectedLanguage ==
                      Language.thai
                      ? FontWeight.w700
                      : FontWeight.w400,
                  textColor: AppColors.white,
                  opacity: context
                      .read<LanguageBloc>()
                      .state
                      .selectedLanguage ==
                      Language.thai
                      ? 1.0
                      : 0.6,
                ),
              )),
        ],
      ),
    );
  }
}
