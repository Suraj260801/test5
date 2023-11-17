import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:gulf_tmt/bloc/login/login_event.dart';
import 'package:gulf_tmt/bloc/login/login_state.dart';

class LoginBlock extends Bloc<LoginEvent, LoginState> {
  LoginBlock() : super(InitialState()) {
    on<UserIdEnterEvent>((event, emit) => emit(UserIdEnterState()));
    on<PasswordEnterEvent>((event, emit) => emit(PasswordEnterState()));
    on<OrganisationCodeEnterEvent>(
        (event, emit) => emit(OrganisationCodeEnterState()));
    on<LoginButtonClickedEvent>((event, emit) => onLoginButtonClicked(event,emit));
    on<ShowPasswordEvent>((event, emit) => emit(ShowPasswordState()));
    on<ForgotPasswordEvent>((event, emit) => emit(ForgotPasswordState()));
  }

  onLoginButtonClicked(
      LoginButtonClickedEvent event, Emitter<LoginState> emit) {
    if(kDebugMode){
      print('Log in Successful');
    }
  }
}
