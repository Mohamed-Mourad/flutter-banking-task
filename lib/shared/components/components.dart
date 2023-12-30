import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

Widget subscriptionType({
  required String type,
  required String imgName,
}) =>
    Container(
      width: 326,
      height: 156,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadows: const [
          BoxShadow(
            color: Color(0x0C77809A),
            blurRadius: 40,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 147,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 172,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'bünd',
                              style: TextStyle(
                                color: navy2,
                                fontSize: 23,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            const TextSpan(
                              text: ' \n',
                              style: TextStyle(
                                color: navy2,
                                fontSize: 23,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: type,
                              style: const TextStyle(
                                color: grey1,
                                fontSize: 23,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Container(
                width: 98.5,
                height: 34,
                padding: const EdgeInsets.all(8.0),
                decoration: ShapeDecoration(
                  color: grey2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/arrow-2.svg"),
                    const Spacer(),
                    const Text(
                      'Start Now',
                      style: TextStyle(
                        color: navy2,
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 130,
            height: 35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgName),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );

Widget activeHomePage({
  required int index,
}) =>
    SizedBox(
      width: 343,
      height: 8,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: ShapeDecoration(
              color: index == 0 ? navy2 : grey3,
              shape: const OvalBorder(),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 8,
            height: 8,
            decoration: ShapeDecoration(
              color: index == 1 ? navy2 : grey3,
              shape: const OvalBorder(),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 8,
            height: 8,
            decoration: ShapeDecoration(
              color: index == 2 ? navy2 : grey3,
              shape: const OvalBorder(),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 8,
            height: 8,
            decoration: ShapeDecoration(
              color: index == 3 ? navy2 : grey3,
              shape: const OvalBorder(),
            ),
          ),
        ],
      ),
    );

Widget accountCondition({
  required String iconName,
  required String description,
}) =>
    Container(
      width: 150,
      height: 85,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconName,
            color: navy4,
          ),
          const SizedBox(
            height: 8.0,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: grey4,
                fontSize: 12,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );

Widget accountFeature({
  required String iconName,
  required String description,
  double opacity = 1.0,
}) => Container(
  width: 98,
  height: 98,
  padding:
  const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
  decoration: ShapeDecoration(
    color: Colors.white.withOpacity(opacity),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6)),
  ),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        width: 28,
        height: 28,
        child: SvgPicture.asset(
          iconName,
          color: navy4.withOpacity(opacity),
        ),
      ),
      const SizedBox(height: 8),
      SizedBox(
        width: 90,
        child: Text(
          description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: grey4.withOpacity(opacity),
            fontSize: 12,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  ),
);

Widget bondContainer({
  required String imgName,
  required String name,
  required String rating,
  required double APY,
}) => Container(
  width: 343,
  height: 72,
  padding: const EdgeInsets.all(10.0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Stack(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: background,
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(imgName),
          ),
        ],
      ),
      const SizedBox(width: 10,),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4,),
          Row(
            children: [
              Text(
                rating,
                style: const TextStyle(
                  color: grey7,
                  fontSize: 12,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
      const Spacer(),
      Text(
        '$APY% APY',
        textAlign: TextAlign.right,
        style: const TextStyle(
          color: green2,
          fontSize: 14,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
        ),
      )
    ],
  ),
);