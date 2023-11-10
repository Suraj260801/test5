import 'package:bloc/bloc.dart';
import 'package:gulf_tmt/l10n/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'language_event.dart';
import 'language_state.dart';




const languagePrefsKey = 'languagePrefs';
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageState()) {
    on<ChangeLanguage>(onChangeLanguage);
    on<GetLanguage>(onGetLanguage);
    //on<ChangeLanguage>((event, emit) => onChangeLanguage(event, emit));
  }

  onChangeLanguage(ChangeLanguage event, Emitter<LanguageState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      languagePrefsKey,
      event.selectedLanguage.value.languageCode,
    );
     emit(state.copyWith(selectedLanguage: event.selectedLanguage));

  }
  // # 2
  onGetLanguage(GetLanguage event, Emitter<LanguageState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final selectedLanguage = prefs.getString(languagePrefsKey);
    emit(state.copyWith(
      selectedLanguage: selectedLanguage != null
          ? Language.values
          .where((item) => item.value.languageCode == selectedLanguage)
          .first
          : Language.english,
    ));
  }
}

