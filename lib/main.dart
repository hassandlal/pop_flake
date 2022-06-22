import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pop_flake_task/modules/home/cubit/cubit.dart';
import 'package:pop_flake_task/shared/cubit/cubit.dart';
import 'package:pop_flake_task/shared/cubit/states.dart';
import 'package:pop_flake_task/shared/network/local/cashe_helper.dart';
import 'package:pop_flake_task/shared/network/remote/dio_helper.dart';
import 'package:pop_flake_task/shared/styles/themes.dart';

import 'layout/app_layout.dart';

void main() async {


  DioHelper.init();
  await CacheHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {

   const MyApp();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AppCubit()
            ..changeAppMode(),
        ),
        BlocProvider(
          create: (BuildContext context) => MoviesCubit()
            ..getComingSoonData()..getInTheatersData()..getMostPopularMoviesData()..getTopRatedData(),
        ),

      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode:AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home:const MyHomePage(),
          );
        },
      ),
    );
  }
}

