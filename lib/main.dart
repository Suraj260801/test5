import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gulf_tmt/bloc/language/language_bloc.dart';
import 'package:gulf_tmt/bloc/language/language_event.dart';
import 'package:gulf_tmt/bloc/language/language_state.dart';
import 'package:gulf_tmt/ui/bits/button_theme.dart';
import 'package:gulf_tmt/ui/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SharedPreferences
      .getInstance(); // Ensure SharedPreferences is initialized
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LanguageBloc>(
      create: (BuildContext context) => LanguageBloc()..add(GetLanguage()),
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (BuildContext context, LanguageState state) {
          return MaterialApp(
            locale: state.selectedLanguage.value,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: appTheme,
            home: const LoginScreen(),
          );
        },
      ),
    );
  }
}
