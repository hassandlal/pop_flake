import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/components/components.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';
class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var searchController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => SearchCubit(),
      child: BlocConsumer<SearchCubit, SearchStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      onFieldSubmitted: (String text) {
                        SearchCubit.get(context).search(text);
                      },
                      decoration:const  InputDecoration(
                        labelText: 'Search',

                        suffixIcon: Icon(
                            Icons.search,
                          ),

                        border:const OutlineInputBorder(),
                      ),
                      controller: searchController,

                    ),
                   const SizedBox(
                      height: 10.0,
                    ),
                    if (state is SearchLoadingState) LinearProgressIndicator(),
                  const  SizedBox(
                      height: 10.0,
                    ),
                    if (state is SearchSuccessState)
                      Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index) => buildListMovie(
                              SearchCubit.get(context).model!.results![index],
                              context,
                            ),
                            separatorBuilder: (context, index) => myDivider(),
                            itemCount:
                            SearchCubit.get(context).model!.results!.length,
                          ),
                      ),
                          if (state is SearchErrorState)
                            Container(

                        child:  const Center(

                            child:const Text('Please Check your internet connection')),

                      ),
                    if (state is SearchSuccessNoResultsState)
                      Container(

                        child:  const Center(

                            child:const Text('No Results')),

                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}