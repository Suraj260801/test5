import 'package:gulf_tmt/models/user_model.dart';

abstract class UserState{}

class UserLoadingState extends UserState{}

class UserLoadedState extends UserState{
  final List<UserModel> users;
  UserLoadedState(this.users);
}

class UserErrorState extends UserState{}