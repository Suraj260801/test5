
import 'package:gulf_tmt/src/models/user_model.dart';

import '../services/users_api_service.dart';

class RemoteUserRepo{

  final RemoteUserService userService=RemoteUserService();

  Future<List<UserModel>> fetchAllMovies() => userService.fetchUsersList();

}