import 'package:flutter/material.dart';

import '../colors.dart';
import '../gaps.dart';
import '../icons.dart';
import '../images.dart';
import '../sizes.dart';
import '../textstyles.dart';


class CustomContainer extends StatelessWidget {
  final VoidCallback? ontap;

  const CustomContainer({
    super.key,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: AppTheme.white,
      child: InkWell(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(borderRadius: BorderRadius.circular(
                        10), child: Image.asset(AppImages.placeholder)),
                  ),
                  HorizontalGap(ScreenWidth(context) * 0.03),
                  SizedBox(
                    height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mobile Screen Repair',style: T3textStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height : 15,
                                    width: 14,
                                    child: Image.asset(AppIcon.location),
                                  ),
                                ),
                                Text(
                                  'James str. London',
                                  style: T4textStyle,
                                ),
                              ],
                            ),
                            Row(
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}