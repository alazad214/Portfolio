import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Message_Controller extends GetxController {
  RxString message = RxString("");
  RxString email = RxString("");
  RxString name = RxString("");

  SendMessage() async {
    await FirebaseFirestore.instance
        .collection("Messages")
        .doc(email.value)
        .collection("message")
        .add({
      "message": message.value,
      "email": email.value,
      "name": name.value,
    });
    Get.snackbar("succes", "Successfully send message");
  }
}
