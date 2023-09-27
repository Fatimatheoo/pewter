import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../screens/login.dart';

SignUpUser(
    String username,
    String useremail,
    String userphone,
    ) async{

  User? userid = FirebaseAuth.instance.currentUser;

  try {
    await FirebaseFirestore.instance.collection("Users")
        .doc(userid!.uid)
        .set({
      'userName': username,
      'userEmail': useremail,
      'userphone' : userphone,
      'CreatedAt': DateTime.now(),
      'UserId': userid!.uid
    }).then((value) => {
      FirebaseAuth.instance.signOut(),
      Get.to(()=> LogInScreen()),
    });
  }on FirebaseAuthException catch (e){
    print("Error $e");
  }
}