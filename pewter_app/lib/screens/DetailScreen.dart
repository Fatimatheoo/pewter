import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/images.dart';
import '../utilitis/reuseablewidgets/Custombackbutton.dart';
import '../utilitis/reuseablewidgets/customoffer_container.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';
import 'AddJob.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({
    super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppTheme.bgColor,
            body: ListView(
                children: [
                  Column(
                      children: [
                        Stack(
                            children: [
                              SizedBox(
                                  height: ScreenHeight(context) * 0.4,
                                  width: ScreenWidth(context),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      AppImages.placeholder,
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomBackButton(ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> AddJob()));})
                                ],
                              ),
                            ]),
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Mobile Screen Repair',style: T5textStyle,),
                                  Text('£ 30.0',style: T6textStyle,),
                                  Text('James str. London',style: T7textStyle,),
                                  Text('Adnan Sami',style: T7textStyle,),
                                  Text('03.05.2023',style: T7textStyle,),
                                  VerticalGap(15),
                                  Text('Lorem Ipsum is simply dummy text of the printing and typeset industry.Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
                                    style: T5textStyle,),
                                  VerticalGap(15),
                                  CustomOfferContainer()
                                ]),
                          ),
                        )
                      ])
                ])
        )
    );
  }
}