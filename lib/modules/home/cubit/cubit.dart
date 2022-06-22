import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pop_flake_task/models/ComingSoonModel.dart';
import 'package:pop_flake_task/models/MostPopularMoviesModel.dart';
import 'package:pop_flake_task/modules/home/cubit/states.dart';
import 'package:pop_flake_task/shared/network/end_points.dart';
import '../../../models/InTheatersModel.dart';
import '../../../models/TopRatedBoxOfficeModel.dart';
import '../../../shared/network/remote/dio_helper.dart';

class MoviesCubit extends Cubit<MoviesStates> {
  MoviesCubit() : super(HomeInitialState());

  static MoviesCubit get(context) => BlocProvider.of(context);

  ComingSoon? comingSoon;
  void getComingSoonData() {
    emit(ComingSoonLoadingHomeDataState());

    DioHelper.getData(
      url: COMINGSOON,
      //token: apiKey,
    ).then((value) async {
      comingSoon = ComingSoon.fromJson(value.data);
      print(comingSoon?.items![0].toString());
      await Future.delayed(Duration(seconds: 4));
      emit(ComingSoonSuccessHomeDataState());
    }).catchError((error) {
      print(error.toString());
      emit(ComingSoonErrorHomeDataState());
    });
  }



  BoxOffice?boxOffice;
  void getTopRatedData() {
    emit(BoxOfficeLoadingHomeDataState());

    DioHelper.getData(
      url: TORRATED,
      //token: apiKey,
    ).then((value) {
      boxOffice = BoxOffice.fromJson(value.data);
      print(boxOffice?.items![0].id.toString());

      emit(BoxOfficeSuccessHomeDataState());
    }).catchError((error) {
      print(error.toString());
      emit(BoxOfficeErrorHomeDataState());
    });
  }




  InTheaters? inTheaters;
  void getInTheatersData() {
    emit(InTheatersLoadingHomeDataState());

    DioHelper.getData(
      url: INTHEATERS,
      //token: apiKey,
    ).then((value) {
      inTheaters = InTheaters.fromJson(value.data);
      print(inTheaters?.items![0].id.toString());

      emit(InTheatersSuccessHomeDataState());
    }).catchError((error) {
      print(error.toString());
      emit(InTheatersErrorHomeDataState());
    });
  }

  MostPopularMovies? mostPopularMovies;
  void getMostPopularMoviesData() {
    emit(MostPopularMoviesLoadingHomeDataState());

    DioHelper.getData(
      url: MostPopularMoviesAPI,
      //token: apiKey,
    ).then((value) {
      mostPopularMovies = MostPopularMovies.fromJson(value.data);
      print(mostPopularMovies?.items![0].id.toString());

      emit(MostPopularMoviesSuccessHomeDataState());
    }).catchError((error) {
      print(error.toString());
      emit(MostPopularMoviesErrorHomeDataState());
    });
  }










}