import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pop_flake_task/shared/components/components.dart';

import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';
import '../Complain_Page/complain_Page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: const Text('dark mode'),
                  trailing: Switch(
                    value: AppCubit.get(context).isDark,
                    onChanged: (value) {
                      AppCubit.get(context).changeAppMode();
                    },
                  ),
                ),
                myDivider(),
                ListTile(title:  Text('Leave Complain'),onTap: (){
                 navigateTo(context, ComplainPage());
               },),
                
                
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
