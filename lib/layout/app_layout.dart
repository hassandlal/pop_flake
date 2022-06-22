import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pop_flake_task/shared/cubit/cubit.dart';
import 'package:pop_flake_task/shared/cubit/states.dart';

import '../modules/home/movies_page.dart';
import '../modules/search/search_page.dart';
import '../modules/settings/settings_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(listener: (context,state){},builder: (context,state){
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('POP FLAKE'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                text: 'movies',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'search',
                icon: Icon(Icons.search),
              ),
              Tab(
                text: 'settings',
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children:  <Widget>[
            MoviesPage(),
            SearchScreen(),
            SettingsPage(),
          ],
        ),
      );},
        );
  }
}
