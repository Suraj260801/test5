


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gulf_tmt/bloc/dash_board/user_event.dart';
import 'package:gulf_tmt/bloc/dash_board/user_state.dart';
import 'package:gulf_tmt/models/user_model.dart';
import 'package:gulf_tmt/repository/remote_user_repo.dart';

class UserBloc extends Bloc<UserEvent,UserState>{
  final RemoteUserRepo userRepo;
  UserBloc(this.userRepo):super(UserLoadingState()) {
     on<UserLoadingEvent>((event, emit) async {
     emit(UserLoadingState());
     try{
       final List<UserModel> users=await userRepo.fetchAllMovies();
       emit(UserLoadedState(users));
     }catch(e){
       emit(UserErrorState());
     }
     }) ;
  }



}