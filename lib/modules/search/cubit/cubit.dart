
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pop_flake_task/modules/search/cubit/states.dart';
import '../../../models/SearchModel.dart';
import '../../../shared/components/components.dart';
import '../../../shared/network/end_points.dart';
import '../../../shared/network/remote/dio_helper.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);

  SearchModel? model;

  void search(String text) {
    emit(SearchLoadingState());

    DioHelper.getData(
      url: SEARCH +text,
      token: token,

    ).then((value)
    {
      model = SearchModel.fromJson(value.data);

     if(model!.results==[]){
       emit(SearchSuccessNoResultsState());
     }
      emit(SearchSuccessState());
    }).catchError((error)
    {

      emit(SearchErrorState());
    });
  }
}