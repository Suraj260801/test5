import 'package:equatable/equatable.dart';
import 'package:gulf_tmt/l10n/l10n.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class ChangeLanguage extends LanguageEvent {
  const ChangeLanguage({required this.selectedLanguage});
  final Language selectedLanguage;

  @override
  List<Object> get props => [selectedLanguage];


}
class GetLanguage extends LanguageEvent {} //
