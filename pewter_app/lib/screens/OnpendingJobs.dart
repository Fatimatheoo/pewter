import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/images.dart';
import '../utilitis/reuseablewidgets/buttonstyle.dart';
import '../utilitis/reuseablewidgets/custom_container.dart';
import '../utilitis/reuseablewidgets/custombutton.dart';
import '../utilitis/reuseablewidgets/jobwidget.dart';
import '../utilitis/reuseablewidgets/logowidget.dart';
import '../utilitis/sizes.dart';
import 'OngoingJobs.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.bgColor,
        appBar: AppBar(
            backgroundColor: AppTheme.bgColor,
            title: Text('James Kocack'),
            titleTextStyle: TextStyle(
              color: AppTheme.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            leading: SizedBox(
              height: 35,
              width: 35,
              child: Image.asset(AppImages.menu),
            )),
        body : Column(
          children: [
            LogoWidget(),
            VerticalGap(ScreenHeight(context)*0.1),
            Container(
              height: 57,
              width: 350,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    CustomSelectedButton(
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));},
                        style: ButtonOne,
                        text: 'ONGOING'),
                    CustomSelectedButton(
                        ontap: (){},
                        style: ButtonTwo,
                        text: 'PENDING'),
                  ],
                ),
              ),
            ),
            VerticalGap(ScreenHeight(context)*0.1),
            CustomContainer(ontap: (){}),
            VerticalGap(10),
            CustomContainer(ontap: (){}),
            VerticalGap(10),
            CustomContainer(ontap: (){}),
            VerticalGap(ScreenHeight(context)*0.04),
            CustomButton(text: 'Post a Job')
          ],
        )
    );
  }
}