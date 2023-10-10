import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_cubit.dart';
import 'package:e_commerce/feature/Home/presentation/view/home_view.dart';
import 'package:e_commerce/feature/search/presentation/manage/cubit/search_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiService.init();


  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context)=>HomeCubit()..getDataHome(),
        ),
        BlocProvider(
          create: (context)=>SearchCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(
        ),
      ),
    );
  }
}
