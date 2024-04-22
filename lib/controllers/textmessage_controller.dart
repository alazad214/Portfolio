import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

class TextMessageController extends GetxController {
  RxString email = RxString("");
  RxString sendMessage = RxString("");

  final auth = FirebaseAuth.instance;

  SendMessage() async {
    await FirebaseFirestore.instance
        .collection("messages")
        .doc(email.value)
        .collection("message")
        .add({"email": email.value, "sendmessage": sendMessage.value});
    Get.snackbar("succes", "Successfully send message");
  }
}
