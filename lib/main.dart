import 'package:bloc/bloc.dart';
import 'package:bund/screens/layout.dart';
import 'package:bund/shared/bloc_observer.dart';
import 'package:bund/shared/components/constants.dart';
import 'package:bund/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';

import 'package:bund/screens/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(
    BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Customize the BottomNavigationBar appearance here
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: navy2,
          unselectedItemColor: grey4,
          elevation: 64.0,
        ),
      ),
      home: AppLayout(),
    );
  }
}