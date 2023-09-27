import 'package:flutter/material.dart';

import '../colors.dart';
import '../icons.dart';
import '../textstyles.dart';
import 'buttonstyle.dart';
import 'jobwidget.dart';

class CustomOfferContainer extends StatelessWidget {
  const CustomOfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      height: 169,
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height : 15,
                    width: 14,
                    child: Image.asset(AppIcon.location),
                  ),
                  Text(
                    'James str. London',
                    style: T4textStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height : 15,
                    width: 14,
                    child: Image.asset(AppIcon.tools),
                  ),
                  Text(
                    'Adnan Sami',
                    style: T4textStyle,
                  ),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height : 15,
                  width: 14,
                  child: Image.asset(AppIcon.clock),
                ),
                Text(
                  '03.05.2023',
                  style: T4textStyle,
                ),
              ],
            ),
          ]),
          Row(
            children: [
              CustomSelectedButton(
                  ontap: (){}, style: StyleOne, text: 'Accept')
            ],
          )
        ],
      ),
    );
  }
}
