import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/components/components.dart';
import '../Box_Office_details_Screen/Box_Office_Screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoviesCubit, MoviesStates>(
        builder: (context, state) {
          if (state is ComingSoonSuccessHomeDataState) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const SizedBox(height: 10,),
                  const Padding (
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('Coming Soon'),
                  ),
                  const SizedBox(height: 10,),
                  BuildListView(MoviesCubit.get(context).comingSoon!,context),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('In Theaters'),
                  ),
                  const SizedBox(height: 10,),
                  BuildListView(MoviesCubit.get(context).inTheaters!,context),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('Top Rated Movies'),
                  ),
                  const SizedBox(height: 10,),
                  BuildListView(MoviesCubit.get(context).mostPopularMovies!,context),
                  const SizedBox(height: 10,),
               const   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('Box Office Movies'),
                  ),
                  const SizedBox(height: 10,),
               Container(
                 width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(

                  itemBuilder: (context, index) {
                    return buildTopRatedListMovie(MoviesCubit.get(context).boxOffice!.items![index],context);
                  },
                  itemCount: MoviesCubit.get(context).boxOffice!.items!.length,
                  scrollDirection: Axis.vertical,
                ),
              ),
                ],
              ),
            );
          } else if (state is BoxOfficeErrorHomeDataState ||
              state is MostPopularMoviesErrorHomeDataState ||
              state is InTheatersErrorHomeDataState ||
              state is ComingSoonErrorHomeDataState) {
            return Scaffold(
              body:  Container(
                width: double.infinity,
                height: double.infinity,
                child:  const Center(

                    child:const Text('Please Check your internet connection')),

              ),
            );
          } else
            return const Center(child: CircularProgressIndicator());
        },
        listener: (context, state) {});
  }
}
