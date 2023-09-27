import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../repository/userdata.dart';
import '../utilitis/gaps.dart';
import '../utilitis/reuseablewidgets/custombutton.dart';
import '../utilitis/reuseablewidgets/customtextfield.dart';
import '../utilitis/reuseablewidgets/logowidget.dart';
import '../utilitis/reuseablewidgets/socialbuttonwidget.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';
import 'OngoingJobs.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  User? currentUser = FirebaseAuth.instance.currentUser;
  var namecontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var confirmcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body : ListView(children: [
          Column(
              children: [
                LogoWidget(),
                VerticalGap(ScreenHeight(context) * 0.04),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                      'Please fill in the form to continue',
                      style: T2textStyle),
                ]),
                VerticalGap(50),
                CustomTextField(
                    text: 'Full Name',
                    textEditingController: namecontroller),
                VerticalGap(ScreenHeight(context)*0.01),
                CustomTextField(
                    text : 'Phone Number',
                    textEditingController: phonecontroller),
                VerticalGap(ScreenHeight(context)*0.01),
                CustomTextField(
                    text: 'Email',
                    textEditingController: emailcontroller),
                VerticalGap(ScreenHeight(context)*0.01),
                CustomTextField(
                    text: 'Password',
                    textEditingController: passwordcontroller),
                VerticalGap(ScreenHeight(context)*0.01),
                CustomTextField(
                    text: 'Confirm Password',
                    textEditingController: confirmcontroller),
                VerticalGap(30),
                CustomButton(
                  text: 'SIGNUP',
                  onTap: () async {
                    var username = namecontroller.text.trim();
                    var useremail = emailcontroller.text.trim();
                    var userpassword = passwordcontroller.text.trim();
                    var userphone = phonecontroller.text.trim();
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: useremail,
                        password: userpassword).then((value) => {
                      log("User Created"),
                      SignUpUser(
                        username,
                        useremail,
                        userphone,
                      )
                    });
                  },
                ),
                VerticalGap(10),
                Center(child: Text('or',style: T3textStyle,)),
                VerticalGap(10),
                socialButtonWidget(),
                VerticalGap(10),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                    },
                    child: Text(
                      "Continue as Guest",
                      style: T2textStyle,
                    ),
                  ),
                )
              ])
        ])
    );
  }
}
