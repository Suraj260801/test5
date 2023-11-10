import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gulf_tmt/bloc/dash_board/user_bloc.dart';
import 'package:gulf_tmt/bloc/dash_board/user_event.dart';
import 'package:gulf_tmt/bloc/dash_board/user_state.dart';
import 'package:gulf_tmt/data/constants/app_settings.dart';
import 'package:gulf_tmt/repository/remote_user_repo.dart';
import 'package:gulf_tmt/ui/bits/custom_text.dart';


class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        actions: [
          DropdownButton<String>(
            focusColor: Colors.blue,
            iconEnabledColor: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            items: Constants.settings
                .map<DropdownMenuItem<String>>((String item) =>
                    DropdownMenuItem(value: item, child: Text(item)))
                .toList(),
            onChanged: (String? newValue) async {},
            icon: Icon(
              Icons.settings,
              color: Colors.grey.shade700,
            ),
          )
        ],
      ),
      body: RepositoryProvider<RemoteUserRepo>(
        create: (context) => RemoteUserRepo(),
        child: BlocProvider<UserBloc>(
          create: (context) =>
              UserBloc(RepositoryProvider.of<RemoteUserRepo>(context))
                ..add(UserLoadingEvent()),
          child: BlocConsumer<UserBloc, UserState>(
              builder: (BuildContext context, UserState state) {
                if (state is UserLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is UserLoadedState) {
                  return ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: const CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          title: Text(state.users[index].name),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: state.users.length);
                } else {
                  return  const Center(
                    child: CustomText(data: "Something Went Wrong!"),
                  );
                }
              },
              listener: (BuildContext context, UserState state) {}),
        ),
      ),
    );
  }
}
