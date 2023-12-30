import 'dart:async';

import 'package:bund/screens/chat.dart';
import 'package:bund/shared/components/constants.dart';
import 'package:bund/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../screens/home.dart';
import '../../screens/investment.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  Color activeColor = navy2;
  Color inactiveColor = grey4;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset("assets/icons/home.svg"),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset("assets/icons/investment.svg"),
      label: "Investment",
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset("assets/icons/chat.svg"),
      label: "Chat",
    ),
  ];

  List<Widget> screens = [
    const HomeScreen(),
    const InvestmentScreen(),
    const ChatScreen(),
  ];

  void changeBottomNavBar(int index){
    currentIndex = index;
    bottomItems = [
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/home.svg",
          color: currentIndex==0 ? navy2 : grey4,
        ),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/investment.svg",
          color: currentIndex==1 ? navy2 : grey4,
        ),
        label: "Investment",
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/chat.svg",
          color: currentIndex==2 ? navy2 : grey4,
        ),
        label: "Chat",
      ),
    ];
    emit(AppBottomNavState());
  }

  void navigateToHome() {
    changeBottomNavBar(0);
    emit(NavigateToHomeState());
  }


  int currentValue = 10000;
  int minValue = 250;
  int maxValue = 500000;
  int stepSmall = 1000;
  int stepLarge = 10000;

  bool isDecrementing = false;
  bool isIncrementing = false;

  void decrementValue() {
    if (currentValue <= 10000 && currentValue > minValue) {
      currentValue = (currentValue - stepSmall).clamp(minValue, 10000);
    } else if (currentValue > 10000) {
      currentValue = (currentValue - stepLarge).clamp(10000, maxValue);
    }
    emit(ValueChangedState());
  }

  void incrementValue() {
    if (currentValue < 10000) {
      currentValue = (currentValue + stepSmall).clamp(minValue, 10000);
    } else {
      currentValue = (currentValue + stepLarge).clamp(10000, maxValue);
    }
    emit(ValueChangedState());
  }

  void startDecrementing() {
    isDecrementing = true;
    _decrementValueContinuously();
  }

  void stopDecrementing() {
    isDecrementing = false;
  }

  void _decrementValueContinuously() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (isDecrementing) {
        decrementValue();
      } else {
        timer.cancel();
      }
    });
  }

  void startIncrementing() {
    isIncrementing = true;
    _incrementValueContinuously();
  }

  void stopIncrementing() {
    isIncrementing = false;
  }

  void _incrementValueContinuously() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (isIncrementing) {
        incrementValue();
      } else {
        timer.cancel();
      }
    });
  }

  int currentTerm = 3;

  void switchToTerm3(){
    currentTerm = 3;
    emit(TermChangedState());
  }

  void switchToTerm5(){
    currentTerm = 5;
    emit(TermChangedState());
  }

  double getCapitalAtMaturity(int amount, int term){
    double CAM = amount+(amount*0.0681*term);
    return CAM.roundToDouble();
  }

  double getTotalInterest(int amount, int term){
    double TI = amount*0.0681*term;
    return TI.roundToDouble();
  }

  double getAnnualInterest(int amount){
    double AI = amount*0.0681;
    return AI.roundToDouble();
  }

  int getAverageMaturityDate(int term){
    int AVD = DateTime.now().year + term;
    return AVD;
  }

}