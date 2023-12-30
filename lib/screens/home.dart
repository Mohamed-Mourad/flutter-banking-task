import 'package:bund/shared/components/constants.dart';
import 'package:bund/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/components/components.dart';
import '../shared/cubit/cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 40, // Adjust the size of the circle as needed
                        height: 40, // Adjust the size of the circle as needed
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors
                              .white, // You can set a background color for the circle if needed
                        ),
                        child: Center(
                          child: SvgPicture.asset("assets/icons/user.svg"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Good Morning',
                                style: TextStyle(
                                  color: navy3,
                                  fontSize: 10,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Mohamed Mourad',
                                style: TextStyle(
                                  color: navy1,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 40, // Adjust the size of the circle as needed
                        height: 40, // Adjust the size of the circle as needed
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors
                              .white, // You can set a background color for the circle if needed
                        ),
                        child: Center(
                          child:
                          SvgPicture.asset("assets/icons/notification.svg"),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                subscriptionType(
                    type: "Standard", imgName: "assets/images/image 19.png"),
                const SizedBox(
                  height: 14.0,
                ),
                activeHomePage(index: 0),
                const SizedBox(
                  height: 14.0,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Conditions',
                        style: TextStyle(
                          color: navy3,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    accountCondition(
                        iconName: "assets/icons/deposit.svg",
                        description: "No Minimum Deposit"),
                    const Spacer(),
                    accountCondition(
                        iconName: "assets/icons/bank.svg",
                        description: "\$15/Month (Paid Annually)"),
                  ],
                ),
                const SizedBox(
                  height: 14.0,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What You Get',
                        style: TextStyle(
                          color: navy3,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    accountFeature(iconName: "assets/icons/bank.svg", description: "Swiss Bank Account"),
                    const Spacer(),
                    accountFeature(iconName: "assets/icons/card.svg", description: "Mastercard Prepaid"),
                    const Spacer(),
                    accountFeature(iconName: "assets/icons/bolt.svg", description: "Account Open Same Day"),
                  ],
                ),
                const SizedBox(height: 12.5,),
                Row(
                  children: [
                    accountFeature(iconName: "assets/icons/protected.svg", description: "Protected up to \$100,000"),
                    const Spacer(),
                    accountFeature(iconName: "assets/icons/seedling.svg", description: "Investments Portfolios", opacity: 0.2),
                    const Spacer(),
                    accountFeature(iconName: "assets/icons/vault.svg", description: "Deposits Options", opacity: 0.15),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
