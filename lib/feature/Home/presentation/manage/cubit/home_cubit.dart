import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/feature/Home/data/model/home_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates>
{
  HomeCubit():super (HomeInitialStates());
  HomeCubit get(context)=>BlocProvider.of(context);

  HomeModel? homeModel;

  void getDataHome()
  {
    emit(HomeLoadingStates());
    ApiService.getData(
        url: 'home',
    ).then((value)
    {
      homeModel=HomeModel.fromJson(value.data);
      emit(HomeSuccessStates());
    }
    ).catchError((error)
    {
      print(error.toString());
      emit(HomeErrorStates(error.toString()));
    }
    );
  }


}