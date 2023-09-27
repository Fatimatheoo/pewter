import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/decoration.dart';
import '../utilitis/reuseablewidgets/Custombackbutton.dart';
import '../utilitis/textstyles.dart';
import 'DetailScreen.dart';

class AddJob extends StatelessWidget {
  const AddJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      appBar: AppBar(
        backgroundColor: AppTheme.bgColor,
        title: Text('Add Job'),
        titleTextStyle: TextStyle(
          color: AppTheme.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        leading: CustomBackButton(ontap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen()));
        },),),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Title',style: T5textStyle,),
                  ],
                ),
                Container(
                  width: 376,
                  height: 60,
                  decoration: Decor,
                  child: Center(child: Text('Title',style: T5textStyle,)),
                ),
                Row(
                  children: [
                    Text('Price',style: T5textStyle,),
                  ],
                ),
                Container(
                  width: 376,
                  height: 60,
                  decoration: Decor,
                  child: Center(child: Text('0.00',style: T5textStyle,)),
                ),
                Row(
                  children: [
                    Text('Description',style: T5textStyle,),
                  ],
                ),
                Container(
                  width: 376,
                  height: 185,
                  decoration: Decor,
                  child: Column(
                    children: [
                      Text('Description',style: T5textStyle,),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text('Starting Time',style: T5textStyle,),
                  ],
                ),
                Container(
                  width: 376,
                  height: 60,
                  decoration: Decor,
                  child: Center(child: Text('10.08.23',style: T5textStyle,)),
                ),
                Row(
                  children: [
                    Text('Location',style: T5textStyle,),
                  ],
                ),
                Container(
                  width: 350,
                  height: 168,
                  decoration: Decor,
                  child: Center(child: Text('James St.London',style: T5textStyle,)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
