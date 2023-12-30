import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../shared/components/components.dart';
import '../shared/components/constants.dart';
import '../shared/cubit/cubit.dart';
import '../shared/cubit/states.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          AppCubit.get(context).navigateToHome();
                        },
                        icon: SvgPicture.asset("assets/icons/leftarrow.svg")),
                    const SizedBox(
                      width: 36.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Fixed Income',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: navy5,
                          fontSize: 20,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const SizedBox(
                  width: 343,
                  height: 103,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fixed Income Portfolio',
                        style: TextStyle(
                          color: navy6,
                          fontSize: 22,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        width: 343,
                        child: Text(
                          'A fixed income portfolio consists of bonds and other securities providing steady income and relatively lower risk.',
                          style: TextStyle(
                            color: navy3,
                            fontSize: 14,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 343,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        height: 69,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Annual Yield To Maturity (YTM)',
                                    style: TextStyle(
                                      color: grey5,
                                      fontSize: 16,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.info_rounded,
                                      size: 16, // Adjust the size as needed
                                      color: grey5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '6.81%',
                              style: TextStyle(
                                color: navy2,
                                fontSize: 31,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Average Rating',
                                    style: TextStyle(
                                      color: grey5,
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'AA',
                                    style: TextStyle(
                                      color: navy2,
                                      fontSize: 22,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Bonds',
                                    style: TextStyle(
                                      color: grey5,
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '20 Companies',
                                    style: TextStyle(
                                      color: navy2,
                                      fontSize: 22,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: double.infinity,
                        //height: 49,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Term Types',
                              style: TextStyle(
                                color: grey5,
                                fontSize: 12,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              //height: 25,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 105.0,
                                        height: 25,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(width: 1, color: grey6),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '3 Year Term',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: grey6,
                                              fontSize: 13,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10.0),
                                      Container(
                                        width: 105.0,
                                        height: 25,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(width: 1, color: grey6),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '5 Year Term',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: grey6,
                                              fontSize: 13,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Investment Calculator',
                      style: TextStyle(
                        color: navy2,
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Container(
                  width: 343,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Investment Amount',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: grey5,
                              fontSize: 12,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          GestureDetector(
                            onLongPress: () {
                              HapticFeedback.lightImpact();
                              AppCubit.get(context).startDecrementing();
                            },
                            onLongPressUp: () {
                              AppCubit.get(context).stopDecrementing();
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                HapticFeedback.lightImpact();
                                AppCubit.get(context).decrementValue();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: background,
                                shape: const CircleBorder(),
                                elevation: 4.0,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                    color: navy2,
                                    fontSize: 24,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          BlocBuilder<AppCubit, AppStates>(
                            builder: (context, state) {
                              if (state is ValueChangedState) {
                                // Access the updated value from the cubit
                                final currentValue = AppCubit.get(context).currentValue;

                                // Format the value with commas
                                final formattedValue = NumberFormat("#,##0", "en_US").format(currentValue);

                                return Text(
                                  '\$${formattedValue.toString()}',
                                  style: const TextStyle(
                                    color: navy2,
                                    fontSize: 36,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                  ),
                                );
                              }
                              // If the state is not ValueChangedState, return a default Text widget
                              return const Text(
                                '\$10,000',
                                style: TextStyle(
                                  color: navy2,
                                  fontSize: 36,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                ),
                              );
                            },
                          ),
                          const Spacer(),
                          GestureDetector(
                            onLongPress: () {
                              HapticFeedback.lightImpact();
                              AppCubit.get(context).startIncrementing();
                            },
                            onLongPressUp: () {
                              AppCubit.get(context).stopIncrementing();
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                HapticFeedback.lightImpact();
                                AppCubit.get(context).incrementValue();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: background,
                                shape: const CircleBorder(),
                                elevation: 4.0,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    color: navy2,
                                    fontSize: 24,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 12.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 85,
                            //height: 25,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 85.0,
                                  height: 25,
                                  decoration: ShapeDecoration(
                                    color: green1,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '6.81% YTM',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: green2,
                                        fontSize: 13,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      BlocBuilder<AppCubit, AppStates>(
                        builder: (context, state) {
                          if (state is TermChangedState) {
                            final currentTerm = AppCubit.get(context).currentTerm;

                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    AppCubit.get(context).switchToTerm3();
                                  },
                                  child: Container(
                                    width: 105.0,
                                    height: 25,
                                    decoration: ShapeDecoration(
                                      color: currentTerm== 3 ? navy7 : background,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: currentTerm== 3 ? navy2 : Colors.transparent),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '3 Year Term',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: currentTerm== 3 ? navy2 : grey6,
                                          fontSize: 13,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                GestureDetector(
                                  onTap: () {
                                    AppCubit.get(context).switchToTerm5();
                                  },
                                  child: Container(
                                    width: 105.0,
                                    height: 25,
                                    decoration: ShapeDecoration(
                                      color: currentTerm== 5 ? navy7 : background,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: currentTerm== 5 ? navy2 : Colors.transparent),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '5 Year Term',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: currentTerm== 5 ? navy2 : grey6,
                                          fontSize: 13,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                          // If the state is not ValueChangedState, return a default Text widget
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 105.0,
                                height: 25,
                                decoration: ShapeDecoration(
                                  color: navy7,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(width: 1, color: navy2),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '3 Year Term',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: navy2,
                                      fontSize: 13,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              GestureDetector(
                                onTap: () {
                                  AppCubit.get(context).switchToTerm5();
                                },
                                child: Container(
                                  width: 105.0,
                                  height: 25,
                                  decoration: ShapeDecoration(
                                    color: background,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(width: 1, color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '5 Year Term',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: grey6,
                                        fontSize: 13,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 20.0),
                      BlocBuilder<AppCubit, AppStates>(
                        builder: (context, state){
                          if(state is TermChangedState || state is ValueChangedState){
                            final CAM = AppCubit.get(context).getCapitalAtMaturity(AppCubit.get(context).currentValue, AppCubit.get(context).currentTerm);
                            final formattedCAM = NumberFormat("#,##0", "en_US").format(CAM);
                            final TA = AppCubit.get(context).getTotalInterest(AppCubit.get(context).currentValue, AppCubit.get(context).currentTerm);
                            final AI = AppCubit.get(context).getAnnualInterest(AppCubit.get(context).currentValue);
                            final AMD = AppCubit.get(context).getAverageMaturityDate(AppCubit.get(context).currentTerm);

                            return SizedBox(
                              width: 302,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Capital At Maturity',
                                                style: TextStyle(
                                                  color: grey5,
                                                  fontSize: 12,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                '\$${formattedCAM.toString()}',
                                                style: const TextStyle(
                                                  color: navy2,
                                                  fontSize: 22,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'Total Interest',
                                                style: TextStyle(
                                                  color: grey5,
                                                  fontSize: 12,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                '\$${TA.toString()}',
                                                style: const TextStyle(
                                                  color: navy2,
                                                  fontSize: 22,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Annual Interest',
                                                style: TextStyle(
                                                  color: grey5,
                                                  fontSize: 12,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                '\$${AI.toString()}',
                                                style: const TextStyle(
                                                  color: navy2,
                                                  fontSize: 22,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'Average Maturity Date',
                                                style: TextStyle(
                                                  color: grey5,
                                                  fontSize: 12,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                AMD.toString(),
                                                style: const TextStyle(
                                                  color: navy2,
                                                  fontSize: 22,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          return const SizedBox(
                            width: 302,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Capital At Maturity',
                                              style: TextStyle(
                                                color: grey5,
                                                fontSize: 12,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              '\$10,681',
                                              style: TextStyle(
                                                color: navy2,
                                                fontSize: 22,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Total Interest',
                                              style: TextStyle(
                                                color: grey5,
                                                fontSize: 12,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              '\$681',
                                              style: TextStyle(
                                                color: navy2,
                                                fontSize: 22,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Annual Interest',
                                              style: TextStyle(
                                                color: grey5,
                                                fontSize: 12,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              '\$68.1',
                                              style: TextStyle(
                                                color: navy2,
                                                fontSize: 22,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Average Maturity Date',
                                              style: TextStyle(
                                                color: grey5,
                                                fontSize: 12,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              '2026',
                                              style: TextStyle(
                                                color: navy2,
                                                fontSize: 22,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bonds',
                      style: TextStyle(
                        color: navy2,
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                bondContainer(imgName: "assets/images/netflix.png", name: "Netflix INC", rating: "BBB", APY: 5.37),
                const SizedBox(height: 16,),
                bondContainer(imgName: "assets/images/ford.png", name: "Ford Motor LLC", rating: "BB+", APY: 7.71),
                const SizedBox(height: 16,),
                bondContainer(imgName: "assets/images/apple.png", name: "Apple INC", rating: "AA+", APY: 4.85),
                const SizedBox(height: 16,),
                bondContainer(imgName: "assets/images/morgan.png", name: "Morgan Stanley", rating: "A-", APY: 6.27),
                const SizedBox(height: 16,),
              ],
            ),
          ),
        );
      },
    );
  }
}
